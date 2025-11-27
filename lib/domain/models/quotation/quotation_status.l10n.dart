import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/generated/l10n.dart';

@immutable
class QuotationStatusL10n {
  const QuotationStatusL10n._();

  static String getArtistStatus(QuotationStatus status, S l10n) {
    switch (status) {
      case QuotationStatus.pending:
        return l10n.quotationStatusArtistPending;
      case QuotationStatus.appealed:
        return l10n.quotationStatusArtistAppealed;
      case QuotationStatus.quoted:
        return l10n.quotationStatusArtistQuoted;
      case QuotationStatus.accepted:
        return l10n.quotationStatusArtistAccepted;
      case QuotationStatus.rejected:
        return l10n.statusRejected;
      case QuotationStatus.canceled:
        return l10n.cancelled;
      case QuotationStatus.open:
        return l10n.quotationStatusArtistOpen;
    }
  }

  static String getCustomerStatus(QuotationStatus status, S l10n) {
    switch (status) {
      case QuotationStatus.pending:
        return l10n.quotationStatusCustomerPending;
      case QuotationStatus.appealed:
        return l10n.quotationStatusCustomerAppealed;
      case QuotationStatus.quoted:
        return l10n.quotationStatusCustomerQuoted;
      case QuotationStatus.accepted:
        return l10n.quotationStatusCustomerAccepted;
      case QuotationStatus.rejected:
        return l10n.quotationStatusCustomerRejected;
      case QuotationStatus.canceled:
        return l10n.quotationStatusCustomerCanceled;
      case QuotationStatus.open:
        return l10n.quotationStatusCustomerOpen;
    }
  }

  static String getStatus(QuotationStatus status, S l10n, bool isArtist) {
    return isArtist 
      ? getArtistStatus(status, l10n)
      : getCustomerStatus(status, l10n);
  }
}
