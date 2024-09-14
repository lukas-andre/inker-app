import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:intl/intl.dart';

class QuotationDetailsAccordion extends StatefulWidget {
  final Quotation quotation;

  const QuotationDetailsAccordion({Key? key, required this.quotation})
      : super(key: key);

  @override
  _QuotationDetailsAccordionState createState() =>
      _QuotationDetailsAccordionState();
}

class _QuotationDetailsAccordionState extends State<QuotationDetailsAccordion>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _heightFactor;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _heightFactor = _controller.drive(CurveTween(curve: Curves.easeIn));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        GestureDetector(
          onTap: _toggleExpanded,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            decoration: BoxDecoration(
              color: explorerSecondaryColor,
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  l10n.quotationDetails,
                  style: TextStyleTheme.headline3.copyWith(color: Colors.white),
                ),
                AnimatedRotation(
                  turns: _isExpanded ? 0.5 : 0,
                  duration: const Duration(milliseconds: 300),
                  child: Icon(
                    Icons.keyboard_arrow_up,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizeTransition(
          axisAlignment: 1.0,
          sizeFactor: _heightFactor,
          child: Container(
            padding: const EdgeInsets.all(16),
            color: explorerSecondaryColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDetailItem(
                    l10n.description, widget.quotation.description),
                _buildDetailItem(
                    l10n.status, getStatusText(widget.quotation.status, l10n)),
                _buildDateDetailItem(
                    l10n.createdAt, widget.quotation.createdAt, l10n),
                if (widget.quotation.referenceImages != null)
                  _buildReferenceImages(
                      widget.quotation.referenceImages!, l10n),
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
                child: Image.network(
                  images.metadata[index].url,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
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
