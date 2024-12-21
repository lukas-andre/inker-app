import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/shared/widgets/image_gallery_view.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:intl/intl.dart';

class AnimatedQuotationDetailsAccordion extends StatefulWidget {
  final Quotation quotation;
  final S l10n;
  final VoidCallback? onViewDetails;

  const AnimatedQuotationDetailsAccordion({
    super.key,
    required this.quotation,
    required this.l10n,
    this.onViewDetails,
  });

  @override
  _AnimatedQuotationDetailsAccordionState createState() =>
      _AnimatedQuotationDetailsAccordionState();
}

class _AnimatedQuotationDetailsAccordionState
    extends State<AnimatedQuotationDetailsAccordion>
    with TickerProviderStateMixin {
  bool _isExpanded = false;
  late AnimationController _controller;
  late Animation<double> _iconTurns;
  late AnimationController _attentionController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    
    // Controlador para la animación de atención
    _attentionController = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    )..repeat();

    // Animación de escala para el rebote suave
    _scaleAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween(begin: 1.0, end: 1.1)
            .chain(CurveTween(curve: Curves.easeOut)),
        weight: 50,
      ),
      TweenSequenceItem(
        tween: Tween(begin: 1.1, end: 1.0)
            .chain(CurveTween(curve: Curves.easeIn)),
        weight: 50,
      ),
    ]).animate(_attentionController);

    // Animación de opacidad para el efecto de parpadeo
    _opacityAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween(begin: 1.0, end: 0.6),
        weight: 50,
      ),
      TweenSequenceItem(
        tween: Tween(begin: 0.6, end: 1.0),
        weight: 50,
      ),
    ]).animate(_attentionController);

    if (widget.quotation.status == QuotationStatus.accepted) {
      _toggleExpand();
    }
    _iconTurns = Tween<double>(begin: 0.0, end: 0.5).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    _attentionController.dispose();
    super.dispose();
  }

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
        _attentionController.stop();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: _toggleExpand,
          child: Container(
            padding: const EdgeInsets.all(16),
            color: primaryColor,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: AnimatedBuilder(
                        animation: _attentionController,
                        builder: (context, child) {
                          return Opacity(
                            opacity: _isExpanded ? 1.0 : _opacityAnimation.value,
                            child: Text(
                              widget.l10n.quotationDetails,
                              style: TextStyleTheme.headline3
                                  .copyWith(color: Colors.white),
                            ),
                          );
                        },
                      ),
                    ),
                    AnimatedBuilder(
                      animation: _attentionController,
                      builder: (context, child) {
                        return Transform.scale(
                          scale: _isExpanded ? 1.0 : _scaleAnimation.value,
                          child: RotationTransition(
                            turns: _iconTurns,
                            child: Icon(
                              Icons.expand_more,
                              color: Colors.white.withOpacity(
                                _isExpanded ? 1.0 : _opacityAnimation.value,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                if (widget.onViewDetails != null && _isExpanded) ...[
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton.icon(
                        onPressed: widget.onViewDetails,
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          backgroundColor: Colors.white.withOpacity(0.1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        icon: const Icon(
                          Icons.visibility_outlined,
                          color: Colors.white,
                          size: 18,
                        ),
                        label: Text(
                          widget.l10n.viewDetails,
                          style: TextStyleTheme.button.copyWith(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          height: _isExpanded ? null : 0,
          child: Container(
            padding: const EdgeInsets.all(16),
            color: explorerSecondaryColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDetailItem(
                  widget.l10n.description,
                  widget.quotation.description,
                ),
                _buildDetailItem(
                  widget.l10n.status,
                  getStatusText(widget.quotation.status, widget.l10n),
                ),
                _buildDateDetailItem(
                  widget.l10n.createdAt,
                  widget.quotation.createdAt,
                  widget.l10n,
                ),
                if (widget.quotation.referenceImages != null)
                  _buildReferenceImages(
                    widget.quotation.referenceImages!,
                    widget.l10n,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDetailItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              label,
              style: TextStyleTheme.bodyText1.copyWith(color: Colors.white70),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDateDetailItem(String label, DateTime date, S l10n) {
    final formattedDate = DateFormat.yMMMd(l10n.locale).add_Hm().format(date);
    final timeAgo = _getTimeAgo(date, l10n);

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              label,
              style: TextStyleTheme.bodyText1.copyWith(color: Colors.white70),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  formattedDate,
                  style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 4),
                Text(
                  timeAgo,
                  style: TextStyleTheme.caption.copyWith(color: Colors.white70),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReferenceImages(MultimediasMetadata images, S l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.referenceImages,
          style: TextStyleTheme.bodyText1.copyWith(color: Colors.white70),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: images.metadata.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageGalleryView(
                          images: images.metadata,
                          initialIndex: index,
                          l10n: l10n,
                        ),
                      ),
                    );
                  },
                  child: Hero(
                    tag: images.metadata[index].url,
                    child: Image.network(
                      images.metadata[index].url,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  String _getTimeAgo(DateTime date, l10n) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays > 365) {
      final years = (difference.inDays / 365).floor();
      return l10n.yearsAgo(years);
    } else if (difference.inDays > 30) {
      final months = (difference.inDays / 30).floor();
      return l10n.monthsAgo(months);
    } else if (difference.inDays > 0) {
      return l10n.daysAgo(difference.inDays);
    } else if (difference.inHours > 0) {
      return l10n.hoursAgo(difference.inHours);
    } else if (difference.inMinutes > 0) {
      return l10n.minutesAgo(difference.inMinutes);
    } else {
      return l10n.justNow;
    }
  }

  String getStatusText(QuotationStatus status, S l10n) {
    switch (status) {
      case QuotationStatus.pending:
        return l10n.upcomming;
      case QuotationStatus.quoted:
        return l10n.quoted;
      case QuotationStatus.accepted:
        return l10n.completed;
      case QuotationStatus.rejected:
        return l10n.cancelled;
      case QuotationStatus.appealed:
        return l10n.upcomming;
      case QuotationStatus.canceled:
        return l10n.cancelled;
      default:
        return '';
    }
  }
}