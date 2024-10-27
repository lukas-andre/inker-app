import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class QuotationDetails extends StatelessWidget {
  final Quotation quotation;

  const QuotationDetails({super.key, required this.quotation});

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);

    return Card(
      margin: const EdgeInsets.all(16),
      color: explorerSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.additionalDetails,
              style: TextStyleTheme.subtitle1,
            ),
            const SizedBox(height: 16),
            _buildDetailRow(
              l10n.description,
              quotation.description,
            ),
            if (quotation.appointmentDuration != null) ...[
              const SizedBox(height: 12),
              _buildDetailRow(
                l10n.appointmentDuration,
                _formatDuration(quotation.appointmentDuration!, l10n),
              ),
            ],
            if (quotation.rejectReasonDetails != null) ...[
              const SizedBox(height: 12),
              _buildDetailRow(
                l10n.rejectionReason,
                _getRejectReasonText(quotation, l10n),
              ),
            ],
            if (quotation.appealedReason != null) ...[
              const SizedBox(height: 12),
              _buildDetailRow(
                l10n.appealReason,
                _getAppealReasonText(quotation.appealedReason!, l10n),
              ),
            ],
            if (quotation.cancelReasonDetails != null) ...[
              const SizedBox(height: 12),
              _buildDetailRow(
                l10n.cancellationReason,
                _getCancelReasonText(quotation, l10n),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyleTheme.caption.copyWith(color: tertiaryColor),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: TextStyleTheme.bodyText1,
        ),
      ],
    );
  }

  String _formatDuration(int minutes, S l10n) {
    final hours = minutes ~/ 60;
    final remainingMinutes = minutes % 60;

    if (hours > 0) {
      return remainingMinutes > 0
          ? l10n.hoursAndMinutes(hours, remainingMinutes)
          : l10n.hoursv2(hours);
    }
    return l10n.minutesv2(minutes);
  }

  String _getRejectReasonText(Quotation quotation, S l10n) {
    String reason = '';

    if (quotation.rejectBy == QuotationRejectBy.customer &&
        quotation.customerRejectReason != null) {
      reason = _getCustomerRejectReason(quotation.customerRejectReason!, l10n);
    } else if (quotation.rejectBy == QuotationRejectBy.artist &&
        quotation.artistRejectReason != null) {
      reason = _getArtistRejectReason(quotation.artistRejectReason!, l10n);
    }

    return quotation.rejectReasonDetails != null
        ? '$reason: ${quotation.rejectReasonDetails}'
        : reason;
  }

  String _getCustomerRejectReason(
      QuotationCustomerRejectReason reason, S l10n) {
    switch (reason) {
      case QuotationCustomerRejectReason.tooExpensive:
        return l10n.rejectReasonTooExpensive;
      case QuotationCustomerRejectReason.notWhatIWanted:
        return l10n.rejectReasonNotWhatIWanted;
      case QuotationCustomerRejectReason.changedMyMind:
        return l10n.rejectReasonChangedMyMind;
      case QuotationCustomerRejectReason.foundAnotherArtist:
        return l10n.rejectReasonFoundAnotherArtist;
      case QuotationCustomerRejectReason.other:
        return l10n.rejectReasonOther;
    }
  }

  String _getArtistRejectReason(QuotationArtistRejectReason reason, S l10n) {
    switch (reason) {
      case QuotationArtistRejectReason.schedulingConflict:
        return l10n.rejectReasonSchedulingConflict;
      case QuotationArtistRejectReason.artisticDisagreement:
        return l10n.rejectReasonArtisticDisagreement;
      case QuotationArtistRejectReason.insufficientDetails:
        return l10n.rejectReasonInsufficientDetails;
      case QuotationArtistRejectReason.beyondExpertise:
        return l10n.rejectReasonBeyondExpertise;
      case QuotationArtistRejectReason.other:
        return l10n.rejectReasonOther;
    }
  }

  String _getAppealReasonText(QuotationCustomerAppealReason reason, S l10n) {
    switch (reason) {
      case QuotationCustomerAppealReason.dateChange:
        return l10n.appealReasonDateChange;
      case QuotationCustomerAppealReason.priceChange:
        return l10n.appealReasonPriceChange;
      case QuotationCustomerAppealReason.designChange:
        return l10n.appealReasonDesignChange;
      case QuotationCustomerAppealReason.other:
        return l10n.appealReasonOther;
    }
  }

  String _getCancelReasonText(Quotation quotation, S l10n) {
    String reason = '';

    if (quotation.canceledBy == QuotationCancelBy.customer &&
        quotation.customerCancelReason != null) {
      reason = _getCustomerCancelReason(quotation.customerCancelReason!, l10n);
    } else if (quotation.canceledBy == QuotationCancelBy.system &&
        quotation.systemCancelReason != null) {
      reason = _getSystemCancelReason(quotation.systemCancelReason!, l10n);
    }

    return quotation.cancelReasonDetails != null
        ? '$reason: ${quotation.cancelReasonDetails}'
        : reason;
  }

  String _getCustomerCancelReason(
      QuotationCustomerCancelReason reason, S l10n) {
    switch (reason) {
      case QuotationCustomerCancelReason.changeOfMind:
        return l10n.cancelReasonChangeOfMind;
      case QuotationCustomerCancelReason.foundAnotherArtist:
        return l10n.cancelReasonFoundAnotherArtist;
      case QuotationCustomerCancelReason.financialReasons:
        return l10n.cancelReasonFinancialReasons;
      case QuotationCustomerCancelReason.personalReasons:
        return l10n.cancelReasonPersonalReasons;
      case QuotationCustomerCancelReason.other:
        return l10n.cancelReasonOther;
    }
  }

  String _getSystemCancelReason(QuotationSystemCancelReason reason, S l10n) {
    switch (reason) {
      case QuotationSystemCancelReason.notAttended:
        return l10n.cancelReasonNotAttended;
      case QuotationSystemCancelReason.systemTimeout:
        return l10n.cancelReasonSystemTimeout;
    }
  }
}
