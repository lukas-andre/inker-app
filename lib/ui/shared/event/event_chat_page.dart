import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/domain/models/event/event_message.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart'; // For QuotationRole
import 'package:inker_studio/domain/services/agenda/agenda_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:intl/intl.dart';

class EventChatPage extends StatefulWidget {
  final String eventId;
  final String agendaId;
  final String eventTitle;
  final String otherPartyName;
  final bool isArtist;
  final DateTime? eventDate;
  final bool isReadOnly;

  const EventChatPage({
    super.key,
    required this.eventId,
    required this.agendaId,
    required this.eventTitle,
    required this.otherPartyName,
    required this.isArtist,
    this.eventDate,
    this.isReadOnly = false,
  });

  @override
  State<EventChatPage> createState() => _EventChatPageState();
}

class _EventChatPageState extends State<EventChatPage> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final List<EventMessage> _messages = [];
  XFile? _selectedImage;
  Timer? _refreshTimer;
  bool _isLoading = false;
  bool _isSending = false;
  bool _isRefreshing = false;
  String? _error;
  bool _isChatExpired = false;
  
  late final AgendaService _agendaService;
  late final LocalSessionService _sessionService;
  String? _currentUserId;

  final _imagePickerOptions = {
    'gallery': ImageSource.gallery,
    'camera': ImageSource.camera,
  };

  @override
  void initState() {
    super.initState();
    _agendaService = context.read<AgendaService>();
    _sessionService = context.read<LocalSessionService>();
    _checkChatExpiration();
    _loadInitialData();
    
    // Set up periodic refresh every 10 seconds
    _refreshTimer = Timer.periodic(const Duration(seconds: 10), (_) {
      if (!_isRefreshing && !_isSending && !isChatDisabled) {
        _refreshMessages(silent: true);
      }
    });
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    _refreshTimer?.cancel();
    super.dispose();
  }

  Future<void> _loadInitialData() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final session = await _sessionService.tryGetActiveSession();
      _currentUserId = session?.user?.id;
      await _loadMessages();
    } catch (e) {
      setState(() {
        _error = e.toString();
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _loadMessages() async {
    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) throw Exception('No active session');

      final messagesData = await _agendaService.getEventMessages(
        token: token,
        agendaId: widget.agendaId,
        eventId: widget.eventId,
      );

      final messages = messagesData.map((data) => 
        EventMessage.fromJson(data as Map<String, dynamic>)
      ).toList();

      setState(() {
        _messages.clear();
        _messages.addAll(messages);
      });

      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollToBottom();
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _error = 'Failed to load messages: ${e.toString()}';
      });
    }
  }

  Future<void> _refreshMessages({bool silent = false}) async {
    if (!silent) {
      setState(() {
        _isRefreshing = true;
      });
    }

    try {
      await _loadMessages();
    } finally {
      if (!silent && mounted) {
        setState(() {
          _isRefreshing = false;
        });
      }
    }
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  void _checkChatExpiration() {
    if (widget.eventDate != null) {
      final threeMonthsAgo = DateTime.now().subtract(const Duration(days: 90));
      setState(() {
        _isChatExpired = widget.eventDate!.isBefore(threeMonthsAgo);
      });
    }
  }

  bool get isChatDisabled => widget.isReadOnly || _isChatExpired;

  Future<void> _sendMessage() async {
    if (isChatDisabled) return;
    
    final messageText = _messageController.text.trim();
    final imageFile = _selectedImage;

    if (messageText.isEmpty && imageFile == null) {
      return;
    }

    setState(() {
      _isSending = true;
    });

    // Create optimistic message
    final optimisticMessage = EventMessage(
      id: 'temp-${DateTime.now().millisecondsSinceEpoch}',
      eventId: widget.eventId,
      senderId: _currentUserId ?? '',
      senderType: widget.isArtist ? QuotationRole.artist : QuotationRole.customer,
      message: messageText,
      imageUrl: imageFile?.path,
      createdAt: DateTime.now(),
    );

    setState(() {
      _messages.add(optimisticMessage);
      _messageController.clear();
      _selectedImage = null;
    });

    _scrollToBottom();

    try {
      final token = await _sessionService.getActiveSessionToken();
      if (token == null) throw Exception('No active session');

      await _agendaService.sendEventMessage(
        token: token,
        agendaId: widget.agendaId,
        eventId: widget.eventId,
        message: messageText,
        image: imageFile,
      );

      // Refresh to get the actual message from server
      await _refreshMessages(silent: true);
    } catch (e) {
      // Remove optimistic message on error
      setState(() {
        _messages.removeWhere((m) => m.id == optimisticMessage.id);
      });
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to send message: ${e.toString()}'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isSending = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              child: Text(
                widget.otherPartyName.isNotEmpty 
                  ? widget.otherPartyName[0].toUpperCase() 
                  : '?',
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.otherPartyName,
                    style: TextStyleTheme.subtitle1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    widget.eventTitle,
                    style: TextStyleTheme.caption.copyWith(
                      color: Colors.white70,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh, color: Colors.white),
            onPressed: _isRefreshing || _isSending ? null : () => _refreshMessages(),
            tooltip: l10n.refresh,
          ),
        ],
      ),
      body: _isLoading
        ? const Center(child: InkerProgressIndicator())
        : _error != null
          ? _buildErrorState()
          : Column(
              children: [
                if (_isRefreshing)
                  LinearProgressIndicator(
                    backgroundColor: Colors.transparent,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                    ),
                    minHeight: 2,
                  ),
                Expanded(
                  child: _messages.isEmpty
                    ? _buildEmptyState()
                    : _buildMessageList(),
                ),
                _buildMessageInput(),
              ],
            ),
    );
  }

  Widget _buildErrorState() {
    final l10n = S.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 48, color: Colors.red),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              _error ?? l10n.error,
              style: TextStyleTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: _loadInitialData,
            child: Text(l10n.retry),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    final l10n = S.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.message,
            size: 64,
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
          ),
          const SizedBox(height: 16),
          Text(
            l10n.noMessagesYet,
            style: TextStyleTheme.subtitle1,
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              l10n.startConversation,
              style: TextStyleTheme.bodyText2.copyWith(
                color: Colors.white70,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageList() {
    return ListView.separated(
      controller: _scrollController,
      padding: const EdgeInsets.all(16),
      itemCount: _messages.length,
      itemBuilder: (context, index) {
        final message = _messages[index];
        final isMyMessage = (widget.isArtist && message.senderType == QuotationRole.artist) ||
                          (!widget.isArtist && message.senderType == QuotationRole.customer);
        
        return _buildMessageBubble(message, isMyMessage);
      },
      separatorBuilder: (context, index) => const SizedBox(height: 16),
    );
  }

  Widget _buildMessageBubble(EventMessage message, bool isMyMessage) {
    final timeFormatted = DateFormat('HH:mm').format(message.createdAt);
    final isOptimistic = message.id.startsWith('temp-');
    final imageUrl = message.imageUrl;

    return Opacity(
      opacity: isOptimistic ? 0.7 : 1.0,
      child: Align(
        alignment: isMyMessage ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.75,
          ),
          decoration: BoxDecoration(
            color: isMyMessage
              ? Theme.of(context).colorScheme.secondary
              : Theme.of(context).colorScheme.secondary.withOpacity(0.8),
            borderRadius: BorderRadius.circular(16).copyWith(
              bottomRight: isMyMessage ? const Radius.circular(4) : null,
              bottomLeft: !isMyMessage ? const Radius.circular(4) : null,
            ),
          ),
          child: Column(
            crossAxisAlignment: isMyMessage 
              ? CrossAxisAlignment.end 
              : CrossAxisAlignment.start,
            children: [
              if (imageUrl != null && imageUrl.isNotEmpty) ...[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: imageUrl.startsWith('http')
                    ? Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                        height: 200,
                        width: double.infinity,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Container(
                            height: 200,
                            color: Colors.grey[850],
                            child: Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded / 
                                    loadingProgress.expectedTotalBytes!
                                  : null,
                                strokeWidth: 2,
                                color: Colors.white70,
                              ),
                            ),
                          );
                        },
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            height: 100,
                            color: Colors.grey[800],
                            child: const Center(
                              child: Icon(Icons.error, color: Colors.white),
                            ),
                          );
                        },
                      )
                    : kIsWeb
                        ? Image.network(
                            imageUrl,
                            fit: BoxFit.cover,
                            height: 200,
                            width: double.infinity,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                height: 100,
                                color: Colors.grey[800],
                                child: const Center(
                                  child: Icon(Icons.broken_image, color: Colors.white),
                                ),
                              );
                            },
                          )
                        : Image.file(
                            File(imageUrl),
                            fit: BoxFit.cover,
                            height: 200,
                            width: double.infinity,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                height: 100,
                                color: Colors.grey[800],
                                child: const Center(
                                  child: Icon(Icons.broken_image, color: Colors.white),
                                ),
                              );
                        },
                      ),
                ),
              ],
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 8),
                child: Column(
                  crossAxisAlignment: isMyMessage
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                  children: [
                    if (message.message.isNotEmpty) ...[
                      Text(
                        message.message,
                        style: TextStyleTheme.bodyText1.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                    ],
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (isOptimistic) ...[
                          const Icon(
                            Icons.access_time,
                            size: 12,
                            color: Colors.white54,
                          ),
                          const SizedBox(width: 4),
                        ],
                        Text(
                          timeFormatted,
                          style: TextStyleTheme.caption.copyWith(
                            color: Colors.white54,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMessageInput() {
    final l10n = S.of(context);
    final canSend = !_isSending && !isChatDisabled &&
      (_messageController.text.trim().isNotEmpty || _selectedImage != null);

    if (isChatDisabled) {
      return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.orange.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.orange.withOpacity(0.3),
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.info_outline,
                  color: Colors.orange,
                  size: 20,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    _isChatExpired
                        ? 'Chat deshabilitado: Han pasado más de 3 meses desde el evento'
                        : 'Chat en modo lectura',
                    style: TextStyleTheme.bodyText2.copyWith(
                      color: Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              icon: Icon(
                Icons.attach_file,
                color: _isSending || isChatDisabled ? Colors.white38 : Colors.white70,
              ),
              onPressed: _isSending || isChatDisabled ? null : _showAttachmentOptions,
              tooltip: l10n.photoLibrary,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    TextField(
                      controller: _messageController,
                      maxLines: 5,
                      minLines: 1,
                      style: TextStyleTheme.bodyText1,
                      enabled: !_isSending && !isChatDisabled,
                      textInputAction: TextInputAction.newline,
                      keyboardType: TextInputType.multiline,
                      onChanged: (text) => setState(() {}),
                      decoration: InputDecoration(
                        hintText: l10n.typeAMessage,
                        hintStyle: TextStyleTheme.bodyText1.copyWith(
                          color: Colors.white38,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ).copyWith(
                          right: _selectedImage != null ? 60 : 16,
                        ),
                      ),
                    ),
                    if (_selectedImage != null)
                      Positioned(
                        right: 8,
                        child: _buildImagePreview(),
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 8),
            _isSending
              ? Container(
                  width: 48,
                  height: 48,
                  padding: const EdgeInsets.all(12),
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                )
              : IconButton(
                  icon: Icon(
                    Icons.send,
                    color: canSend 
                      ? Theme.of(context).colorScheme.secondary 
                      : Colors.white38,
                  ),
                  onPressed: canSend ? _sendMessage : null,
                  tooltip: l10n.send,
                ),
          ],
        ),
      ),
    );
  }

  Widget _buildImagePreview() {
    return SizedBox(
      width: 40,
      height: 40,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Theme.of(context).colorScheme.secondary,
                width: 2,
              ),
            ),
            child: _selectedImage != null
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: kIsWeb
                    ? Image.network(
                        _selectedImage!.path,
                        fit: BoxFit.cover,
                        width: 36,
                        height: 36,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: 36,
                            height: 36,
                            color: Colors.grey[800],
                            child: const Icon(Icons.broken_image, color: Colors.white, size: 16),
                          );
                        },
                      )
                    : Image.file(
                        File(_selectedImage!.path),
                        fit: BoxFit.cover,
                        width: 36,
                        height: 36,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: 36,
                            height: 36,
                            color: Colors.grey[800],
                            child: const Icon(Icons.broken_image, color: Colors.white, size: 16),
                          );
                        },
                      ),
                )
              : const SizedBox.shrink(),
          ),
          if (!_isSending)
            Positioned(
              top: -8,
              right: -8,
              child: InkWell(
                onTap: () {
                  setState(() {
                    _selectedImage = null;
                  });
                },
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.error,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.close,
                    size: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  void _showAttachmentOptions() {
    final l10n = S.of(context);
    FocusScope.of(context).unfocus();
    
    showModalBottomSheet(
      context: context,
      backgroundColor: explorerSecondaryColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return SafeArea(
          child: Wrap(
            children: _imagePickerOptions.entries.map((entry) {
              final title = entry.key == 'gallery' 
                ? l10n.photoLibrary 
                : l10n.camera;
              final icon = entry.key == 'gallery'
                ? Icons.photo_library
                : Icons.camera_alt;

              return ListTile(
                leading: Icon(icon, color: Colors.white),
                title: Text(
                  title,
                  style: TextStyleTheme.bodyText1,
                ),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(entry.value);
                },
              );
            }).toList(),
          ),
        );
      },
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    final l10n = S.of(context);
    try {
      final pickedFile = await ImagePicker().pickImage(source: source);
      if (pickedFile != null) {
        setState(() {
          _selectedImage = pickedFile;
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l10n.errorLoadingImage),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
} 