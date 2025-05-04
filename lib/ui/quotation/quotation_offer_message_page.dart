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
      )..add(LoadMessages(
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
  State<_QuotationOfferMessageView> createState() =>
      _QuotationOfferMessageViewState();
}

class _QuotationOfferMessageViewState
    extends State<_QuotationOfferMessageView> {
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
    // Set up periodic refresh
    _refreshTimer = Timer.periodic(const Duration(seconds: 15), (_) {
      // Only poll if the widget is mounted and BLoC is in a loaded state
      // and not already refreshing or sending.
      if (mounted) {
        final currentState = context.read<OfferMessageBloc>().state;
        currentState.maybeWhen(
          loaded: (messages, quotationId, offerId, offer, isRefreshing, isSending) {
            if (!isRefreshing && !isSending) {
              context.read<OfferMessageBloc>().add(const RefreshMessages());
            }
          },
          orElse: () {
            // Don't refresh during initial load, loading, or error states
          },
        );
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
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    final isArtist =
        context.read<AuthBloc>().state.session.user?.userType == 'ARTIST';

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
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
                  String displayName = widget.customerName;
                  Money? estimatedCost;
                  state.maybeWhen(
                    loaded: (messages, quotationId, offerId, offer, isRefreshing, isSending) {
                      estimatedCost = offer.estimatedCost;
                    },
                    orElse: () {
                      estimatedCost = widget.offer.estimatedCost;
                    },
                  );
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
                          "Offer: ${estimatedCost?.formatWithSymbol()}",
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
          BlocBuilder<OfferMessageBloc, OfferMessageState>(
            builder: (context, state) {
              bool canManualRefresh = state.maybeWhen(
                loaded: (messages, quotationId, offerId, offer, isRefreshing, isSending) =>
                    !isRefreshing && !isSending,
                orElse: () =>
                    true, // Allow refresh from error/initial states to trigger load
              );
              return IconButton(
                icon: const Icon(Icons.refresh, color: Colors.white),
                onPressed: canManualRefresh
                    ? () => context
                        .read<OfferMessageBloc>()
                        .add(const RefreshMessages())
                    : null,
                tooltip: l10n.refresh,
              );
            },
          ),
          if (isArtist)
            IconButton(
              icon: const Icon(Icons.edit, color: Colors.white),
              tooltip: 'Editar oferta',
              onPressed: () => _showEditOfferDialog(context, context.read()),
            ),
        ],
      ),
      body: BlocConsumer<OfferMessageBloc, OfferMessageState>(
        listener: (context, state) {
          state.maybeWhen(
            loaded: (messages, quotationId, offerId, offer, isRefreshing, isSending) async {
              await Future.delayed(const Duration(milliseconds: 300));
              _scrollToBottom();
            },
            error: (message) {
              // Show error message
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(message), backgroundColor: Colors.red));
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.map(
            initial: (_) => const Center(child: InkerProgressIndicator()),
            loading: (_) => const Center(child: InkerProgressIndicator()),
            loaded: (loadedState) => Column(
              children: [
                if (loadedState.isRefreshing)
                  SizedBox(
                    height: 2,
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.transparent,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          secondaryColor.withOpacity(0.5)),
                      minHeight: 2,
                    ),
                  )
                else
                  const SizedBox(height: 2),
                Expanded(
                  child: loadedState.messages.isEmpty
                      ? _buildEmptyState()
                      : _buildMessageList(loadedState.messages),
                ),
                _buildMessageInput(isSending: loadedState.isSending),
              ],
            ),
            error: (errorState) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 48, color: Colors.red),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(errorState.message,
                        style: TextStyleTheme.bodyText1,
                        textAlign: TextAlign.center),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () =>
                        context.read<OfferMessageBloc>().add(LoadMessages(
                              quotationId: widget.quotationId,
                              offerId: widget.offerId,
                            )),
                    child: const Text("Try Again"),
                  )
                ],
              ),
            ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(
              "Start the conversation by sending a message",
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

  Widget _buildMessageList(List<OfferMessageDto> messages) {
    final isArtist =
        context.read<AuthBloc>().state.session.user?.userType == 'ARTIST';
    final currentUserId = context.read<AuthBloc>().state.session.user?.id;

    return ListView.separated(
      controller: _scrollController,
      padding: const EdgeInsets.all(16),
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];
        final bool isMyMessage;
        if (message.id?.startsWith('temp-') ?? false) {
          isMyMessage = message.senderId == currentUserId;
        } else {
          isMyMessage =
              (isArtist && message.senderType == QuotationRole.artist) ||
                  (!isArtist && message.senderType == QuotationRole.customer);
        }

        return _buildMessageBubble(message, isMyMessage);
      },
      separatorBuilder: (context, index) => const SizedBox(height: 16),
    );
  }

  Widget _buildMessageBubble(OfferMessageDto message, bool isMyMessage) {
    final timeFormatted = DateFormat('HH:mm').format(message.timestamp);
    final isOptimistic = message.id?.startsWith('temp-') ?? false;
    final imageToShow = message.imageUrl;

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
                ? secondaryColor.withOpacity(0.8)
                : explorerSecondaryColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment:
                isMyMessage ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              if (imageToShow != null) ...[
                ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                    child: imageToShow.startsWith('http')
                        ? Image.network(
                            imageToShow,
                            fit: BoxFit.cover,
                            height: 200,
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) return child;
                              return Container(
                                height: 200,
                                width: MediaQuery.of(context).size.width * 0.75,
                                color: Colors.grey[850],
                                child: Center(
                                  child: CircularProgressIndicator(
                                    value: loadingProgress.expectedTotalBytes !=
                                            null
                                        ? loadingProgress
                                                .cumulativeBytesLoaded /
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
                        : Image.file(
                            File(imageToShow),
                            fit: BoxFit.cover,
                            height: 200,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                height: 100,
                                color: Colors.grey[800],
                                child: const Center(
                                  child: Icon(Icons.broken_image,
                                      color: Colors.white),
                                ),
                              );
                            },
                          )),
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
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          if (isOptimistic) ...[
                            const Icon(Icons.access_time,
                                size: 10, color: Colors.white70),
                            const SizedBox(width: 4),
                          ],
                          Text(
                            timeFormatted,
                            style: TextStyleTheme.caption.copyWith(
                              color: Colors.white70,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
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

  Widget _buildMessageInput({required bool isSending}) {
    bool canSend = !isSending &&
        (_messageController.text.trim().isNotEmpty || _selectedImage != null);

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
              tooltip: 'Attach Image',
            ),
            Expanded(
              child: Container(
                padding: _selectedImage != null
                    ? const EdgeInsets.only(right: 50)
                    : null,
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Stack(alignment: Alignment.centerRight, children: [
                  TextField(
                    controller: _messageController,
                    maxLines: 5,
                    minLines: 1,
                    style: TextStyleTheme.bodyText1,
                    enabled: !isSending,
                    textInputAction: TextInputAction.newline,
                    keyboardType: TextInputType.multiline,
                    onChanged: (text) => setState(() {}),
                    decoration: InputDecoration(
                      hintText: "Type a message",
                      hintStyle: TextStyleTheme.bodyText1
                          .copyWith(color: Colors.white38),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                    ),
                  ),
                  if (_selectedImage != null)
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: _buildImagePreview(isSending: isSending),
                    ),
                ]),
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
                        valueColor:
                            AlwaysStoppedAnimation<Color>(secondaryColor),
                      ),
                    ),
                  )
                : IconButton(
                    icon: const Icon(Icons.send, color: Colors.white),
                    onPressed: canSend ? _sendMessage : null,
                    color: canSend ? secondaryColor : Colors.grey,
                    tooltip: 'Send Message',
                  ),
          ],
        ),
      ),
    );
  }

  Widget _buildImagePreview({required bool isSending}) {
    return SizedBox(
      width: 40,
      height: 40,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
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
          if (!isSending)
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
                  decoration: const BoxDecoration(
                    color: Colors.black54,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.cancel,
                    size: 18,
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
    FocusScope.of(context).unfocus();
    showModalBottomSheet(
      context: context,
      backgroundColor: explorerSecondaryColor,
      builder: (context) {
        return SafeArea(
          child: Wrap(
            children: _imagePickerOptions.entries.map((entry) {
              final title = entry.key == 'gallery' ? 'Photo Library' : 'Camera';
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
    try {
      final pickedFile = await ImagePicker().pickImage(source: source);
      if (pickedFile != null) {
        setState(() {
          _selectedImage = pickedFile;
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Could not pick image: $e'),
          backgroundColor: Colors.red));
    }
  }

  void _sendMessage() {
    final messageText = _messageController.text.trim();
    final imageFile = _selectedImage;

    if (messageText.isEmpty && imageFile == null) {
      return;
    }

    context.read<OfferMessageBloc>().add(
          SendMessage(
            message: messageText,
            image: imageFile,
          ),
        );

    _messageController.clear();
    setState(() {
      _selectedImage = null;
    });
  }

  void _showEditOfferDialog(BuildContext context, OfferMessageBloc bloc) {
    final offer = widget.offer;
    final costController = TextEditingController(
      text: offer.estimatedCost?.amount != null
          ? (offer.estimatedCost!.amount / 100).toString()
          : '',
    );

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: quaternaryColor,
          title: Text(
            'Editar costo de la oferta',
            style: TextStyleTheme.headline3.copyWith(color: primaryColor),
          ),
          content: TextField(
            controller: costController,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            decoration: InputDecoration(
              labelText: 'Costo estimado (CLP)',
              hintText: 'Ej: 50000',
              labelStyle: labelTextStyle,
              hintStyle: hintTextStyle,
              filled: true,
              fillColor: Colors.white,
              border: inputBorder,
              focusedBorder: focusedBorder,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            ),
            style: TextStyleTheme.bodyText1.copyWith(color: primaryColor),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancelar', style: TextStyle(color: tertiaryColor)),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: secondaryColor,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                final cost = double.tryParse(costController.text);
                if (cost != null) {
                  final money = Money(
                    amount: (cost * 100).toInt(),
                    currency: 'CLP',
                    scale: 2,
                  );
                  bloc.add(
                    OfferMessageEvent.updateOffer(
                      estimatedCost: money,
                    ),
                  );
                  // Enviar mensaje de "sistema" al chat
                  bloc.add(
                    OfferMessageEvent.sendMessage(
                      message: 'El artista actualizó el costo de la oferta a \$${costController.text} CLP.',
                    ),
                  );
                  Navigator.pop(context);
                }
              },
              child: const Text('Guardar'),
            ),
          ],
        );
      },
    );
  }
}
