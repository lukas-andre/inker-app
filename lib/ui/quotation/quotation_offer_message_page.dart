import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';
import 'package:inker_studio/domain/blocs/quoation/offer_message/offer_message_bloc.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:intl/intl.dart';

/// Message page for viewing and sending messages for a specific quotation offer
class QuotationOfferMessagePage extends StatelessWidget {
  final String quotationId;
  final String offerId;
  final QuotationOfferListItemDto offer;
  final String customerName;

  const QuotationOfferMessagePage({
    super.key,
    required this.quotationId,
    required this.offerId,
    required this.offer,
    required this.customerName,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OfferMessageBloc(
        quotationService: context.read(),
        sessionService: context.read(),
      )..add(OfferMessageEvent.loadMessages(
          quotationId: quotationId,
          offerId: offerId,
        )),
      child: _QuotationOfferMessageView(
        quotationId: quotationId,
        offerId: offerId,
        offer: offer,
        customerName: customerName,
      ),
    );
  }
}

class _QuotationOfferMessageView extends StatefulWidget {
  final String quotationId;
  final String offerId;
  final QuotationOfferListItemDto offer;
  final String customerName;

  const _QuotationOfferMessageView({
    required this.quotationId,
    required this.offerId,
    required this.offer,
    required this.customerName,
  });

  @override
  State<_QuotationOfferMessageView> createState() => _QuotationOfferMessageViewState();
}

class _QuotationOfferMessageViewState extends State<_QuotationOfferMessageView> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  XFile? _selectedImage;
  final _imagePickerOptions = {
    'gallery': ImageSource.gallery,
    'camera': ImageSource.camera,
  };

  // Timer for periodic refreshes
  late Timer? _refreshTimer;

  @override
  void initState() {
    super.initState();
    
    // Set up periodic refresh every 15 seconds
    _refreshTimer = Timer.periodic(const Duration(seconds: 15), (_) {
      if (mounted) {
        context.read<OfferMessageBloc>().add(const OfferMessageEvent.refreshMessages());
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

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      Future.delayed(const Duration(milliseconds: 100), () {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    final isArtist = context.read<AuthBloc>().state.session.user?.userType == 'ARTIST';
    
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey[700],
              child: Text(
                widget.customerName.isNotEmpty 
                    ? widget.customerName[0].toUpperCase() 
                    : '?',
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: BlocBuilder<OfferMessageBloc, OfferMessageState>(
                builder: (context, state) {
                  // If state is loaded, extract customer name from state if possible
                  String displayName = widget.customerName;
                  Money? estimatedCost = widget.offer.estimatedCost;

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        displayName,
                        style: TextStyleTheme.subtitle1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (estimatedCost != null) ...[
                        Text(
                          "Offer: \$${estimatedCost.amount / 100} ${estimatedCost.currency}",
                          style: TextStyleTheme.caption.copyWith(
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ],
                  );
                },
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => context.read<OfferMessageBloc>().add(
              const OfferMessageEvent.refreshMessages()
            ),
            tooltip: l10n.refresh,
          ),
        ],
      ),
      body: BlocConsumer<OfferMessageBloc, OfferMessageState>(
        listener: (context, state) {
          state.maybeWhen(
            loaded: (messages, _, __) {
              // When messages are loaded, scroll to the bottom
              _scrollToBottom();
            },
            error: (message) {
              // Show error message
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: Colors.red)
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: state.maybeWhen(
                  initial: () => const Center(child: InkerProgressIndicator()),
                  loading: () => const Center(child: InkerProgressIndicator()),
                  loaded: (messages, _, __) => messages.isEmpty 
                    ? _buildEmptyState() 
                    : _buildMessageList(messages),
                  sending: () => const Center(child: InkerProgressIndicator()),
                  error: (message) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.error_outline, size: 48, color: Colors.red),
                        SizedBox(height: 16),
                        Text(message, style: TextStyleTheme.bodyText1),
                        SizedBox(height: 24),
                        ElevatedButton(
                          onPressed: () => context.read<OfferMessageBloc>().add(
                            OfferMessageEvent.loadMessages(
                              quotationId: widget.quotationId,
                              offerId: widget.offerId,
                            )
                          ),
                          child: Text("Try Again"),
                        )
                      ],
                    ),
                  ),
                  orElse: () => const Center(child: InkerProgressIndicator()),
                ),
              ),
              _buildMessageInput(),
            ],
          );
        },
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.message,
            size: 64,
            color: tertiaryColor,
          ),
          const SizedBox(height: 16),
          Text(
            "No messages yet",
            style: TextStyleTheme.subtitle1,
          ),
          const SizedBox(height: 8),
          Text(
            "Start the conversation by sending a message",
            style: TextStyleTheme.bodyText2.copyWith(
              color: Colors.white70,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildMessageList(List<OfferMessageDto> messages) {
    final isArtist = context.read<AuthBloc>().state.session.user?.userType == 'ARTIST';
    
    return ListView.builder(
      controller: _scrollController,
      padding: const EdgeInsets.all(16),
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];
        final isMyMessage = (isArtist && message.senderType == QuotationRole.artist) ||
                           (!isArtist && message.senderType == QuotationRole.customer);
        
        return _buildMessageBubble(message, isMyMessage);
      },
    );
  }

  Widget _buildMessageBubble(OfferMessageDto message, bool isMyMessage) {
    final timeFormatted = DateFormat('HH:mm').format(message.timestamp);
    
    return Align(
      alignment: isMyMessage ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.75,
        ),
        decoration: BoxDecoration(
          color: isMyMessage ? secondaryColor.withOpacity(0.8) : explorerSecondaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (message.imageUrl != null) ...[
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: Image.network(
                  message.imageUrl!,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return SizedBox(
                      height: 200,
                      child: Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
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
                ),
              ),
            ],
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    message.message,
                    style: TextStyleTheme.bodyText1.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      timeFormatted,
                      style: TextStyleTheme.caption.copyWith(
                        color: Colors.white70,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageInput() {
    final isSending = context.read<OfferMessageBloc>().state == const OfferMessageState.sending();
    
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      color: explorerSecondaryColor,
      child: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              icon: const Icon(Icons.attach_file, color: Colors.white70),
              onPressed: isSending ? null : _showAttachmentOptions,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: TextField(
                  controller: _messageController,
                  maxLines: 5,
                  minLines: 1,
                  style: TextStyleTheme.bodyText1,
                  enabled: !isSending,
                  decoration: InputDecoration(
                    hintText: "Type a message",
                    hintStyle: TextStyleTheme.bodyText1.copyWith(color: Colors.white38),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    suffixIcon: _selectedImage != null
                        ? _buildImagePreview()
                        : null,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            isSending
                ? const SizedBox(
                    width: 48,
                    height: 48,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(secondaryColor),
                      ),
                    ),
                  )
                : IconButton(
                    icon: const Icon(Icons.send, color: secondaryColor),
                    onPressed: _sendMessage,
                  ),
          ],
        ),
      ),
    );
  }

  Widget _buildImagePreview() {
    return Stack(
      children: [
        Container(
          width: 40,
          height: 40,
          margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: _selectedImage != null
                ? DecorationImage(
                    image: FileImage(File(_selectedImage!.path)),
                    fit: BoxFit.cover,
                  )
                : null,
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: GestureDetector(
            onTap: () {
              setState(() {
                _selectedImage = null;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black54,
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
    );
  }

  void _showAttachmentOptions() {
    showModalBottomSheet(
      context: context,
      backgroundColor: explorerSecondaryColor,
      builder: (context) {
        return SafeArea(
          child: Wrap(
            children: _imagePickerOptions.entries.map((entry) {
              final title = entry.key == 'gallery' ? 'Photo Library' : 'Camera';
              final icon = entry.key == 'gallery' ? Icons.photo_library : Icons.camera_alt;
              
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
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = pickedFile;
      });
    }
  }

  void _sendMessage() {
    final messageText = _messageController.text.trim();
    if (messageText.isEmpty && _selectedImage == null) {
      return;
    }

    // Use the bloc to send the message
    context.read<OfferMessageBloc>().add(
      OfferMessageEvent.sendMessage(
        quotationId: widget.quotationId,
        offerId: widget.offerId,
        message: messageText,
        image: _selectedImage,
      ),
    );
    
    // Clear the text field and image immediately for better UX
    _messageController.clear();
    setState(() {
      _selectedImage = null;
    });
  }
} 