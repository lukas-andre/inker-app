import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/models/quotation/quotation_action_enum.dart';
import 'package:inker_studio/domain/models/session/session.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/keys.dart';

enum QuotationActionType {
  reply,
  reject,
  rejectAppeal,
  cancel,
  accept,
  appeal,
  edit
}

class QuotationAction {
  final QuotationActionType type;
  final String label;
  final IconData icon;
  final bool isPrimary;
  final bool showInMenu;
  final String? routeName;
  final Map<String, dynamic>? routeArguments;

  const QuotationAction({
    required this.type,
    required this.label,
    required this.icon,
    this.isPrimary = false,
    this.showInMenu = false,
    this.routeName,
    this.routeArguments,
  });
}

class QuotationActionManager {
  final BuildContext context;
  final Quotation quotation;
  final Session session;
  final S l10n;
  final Function(QuotationActionType, String) onActionExecuted;

  QuotationActionManager({
    required this.context,
    required this.quotation,
    required this.session,
    required this.l10n,
    required this.onActionExecuted,
  });

  bool get isArtist => session.user?.userType == 'ARTIST';

  List<QuotationAction> getAvailableActions() {
    if (isArtist) {
      return _getArtistActions();
    }
    return _getCustomerActions();
  }

  List<QuotationAction> _getArtistActions() {
    switch (quotation.status) {
      case QuotationStatus.pending:
      case QuotationStatus.appealed:
        return [
          QuotationAction(
            type: QuotationActionType.reply,
            label: l10n.reply,
            icon: Icons.reply,
            isPrimary: true,
            routeName: '/artistQuotationResponse',
            routeArguments: {'quotationId': quotation.id.toString()},
          ),
          QuotationAction(
            type: QuotationActionType.reject,
            label: l10n.reject,
            icon: Icons.cancel,
            routeName: '/artistQuotationResponse',
            routeArguments: {
              'quotationId': quotation.id.toString(),
              'predefinedAction': quotation.status == QuotationStatus.pending
                  ? ArtistQuotationAction.reject
                  : ArtistQuotationAction.rejectAppeal,
            },
          ),
        ];
      case QuotationStatus.open:
        return [
          QuotationAction(
            type: QuotationActionType.reply,
            label: 'Enviar Propuesta',
            icon: Icons.send,
            isPrimary: true,
            routeName: '/artistQuotationResponse',
            routeArguments: {'quotationId': quotation.id.toString()},
          ),
        ];
      default:
        return [];
    }
  }

  List<QuotationAction> _getCustomerActions() {
    switch (quotation.status) {
      case QuotationStatus.open:
        return [
          QuotationAction(
            type: QuotationActionType.edit,
            label: l10n.edit,
            icon: Icons.edit,
            isPrimary: true,
            routeName: '/editOpenQuotation',
            routeArguments: {'quotation': quotation},
          ),
        ];
      case QuotationStatus.pending:
        return [
          QuotationAction(
            type: QuotationActionType.cancel,
            label: l10n.cancel,
            icon: Icons.cancel,
          ),
        ];
      case QuotationStatus.quoted:
        return [
          QuotationAction(
            type: QuotationActionType.accept,
            label: l10n.accept,
            icon: Icons.check,
            isPrimary: true,
            routeName: '/customerQuotationResponse',
            routeArguments: {
              'quotationId': quotation.id.toString(),
              'predefinedAction': CustomerQuotationAction.accept,
            },
          ),
          QuotationAction(
            type: QuotationActionType.appeal,
            label: l10n.appeal,
            icon: Icons.edit,
            showInMenu: true,
            routeName: '/customerQuotationResponse',
            routeArguments: {
              'quotationId': quotation.id.toString(),
              'predefinedAction': CustomerQuotationAction.appeal,
            },
          ),
          QuotationAction(
            type: QuotationActionType.reject,
            label: l10n.reject,
            icon: Icons.cancel,
            showInMenu: true,
            routeName: '/customerQuotationResponse',
            routeArguments: {
              'quotationId': quotation.id.toString(),
              'predefinedAction': CustomerQuotationAction.reject,
            },
          ),
        ];
      default:
        return [
          if (quotation.type == QuotationType.OPEN &&
              session.user?.id == quotation.customerId)
            QuotationAction(
              type: QuotationActionType.edit,
              label: l10n.edit,
              icon: Icons.edit,
              isPrimary: true,
              routeName: '/editOpenQuotation',
              routeArguments: {'quotation': quotation},
            ),
        ];
    }
  }

  Future<void> executeAction(QuotationAction action) async {
    if (action.routeName != null) {
      final result = await Navigator.of(context).pushNamed(
        action.routeName!,
        arguments: action.routeArguments,
      );

      // If action was completed successfully
      if (result == true) {
        // Notify that an action was executed so we can update UI
        onActionExecuted(action.type, quotation.id.toString());
      }
    } else {
      // Handle special cases like cancel that don't use routes
      switch (action.type) {
        case QuotationActionType.cancel:
          _showCancelConfirmationDialog();
          break;
        default:
          break;
      }
    }
  }

  Future<void> _showCancelConfirmationDialog() async {
    bool? confirmed;

    if (Platform.isIOS) {
      confirmed = await showCupertinoDialog<bool>(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
          title: Text(l10n.cancelQuotationConfirmationTitle),
          content: Text(l10n.cancelQuotationConfirmationMessage),
          actions: <Widget>[
            CupertinoDialogAction(
              key: Keys.quotationNoCancelButton,
              child: Text(l10n.no),
              onPressed: () => Navigator.of(context).pop(false),
            ),
            CupertinoDialogAction(
              key: Keys.quotationConfirmCancelButton,
              child: Text(l10n.yes),
              onPressed: () => Navigator.of(context).pop(true),
            ),
          ],
        ),
      );
    } else {
      confirmed = await showDialog<bool>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text(l10n.cancelQuotationConfirmationTitle),
          content: Text(l10n.cancelQuotationConfirmationMessage),
          actions: <Widget>[
            TextButton(
              key: Keys.quotationNoCancelButton,
              child: Text(l10n.no),
              onPressed: () => Navigator.of(context).pop(false),
            ),
            TextButton(
              key: Keys.quotationConfirmCancelButton,
              child: Text(l10n.yes),
              onPressed: () => Navigator.of(context).pop(true),
            ),
          ],
        ),
      );
    }

    if (confirmed == true) {
      onActionExecuted(QuotationActionType.cancel, quotation.id.toString());
    }
  }
}
