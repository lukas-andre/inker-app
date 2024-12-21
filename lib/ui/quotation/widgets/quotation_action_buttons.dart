import 'package:flutter/material.dart';
import 'package:inker_studio/ui/quotation/quotation_action_manager.dart';

class QuotationActionButtons extends StatelessWidget {
  final QuotationActionManager actionManager;

  const QuotationActionButtons({
    super.key,
    required this.actionManager,
  });

  @override
  Widget build(BuildContext context) {
    final actions = actionManager.getAvailableActions();
    if (actions.isEmpty) return const SizedBox.shrink();

    // Separate primary actions and menu actions
    final primaryActions = actions.where((a) => !a.showInMenu).toList();
    final menuActions = actions.where((a) => a.showInMenu).toList();

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ...primaryActions.map((action) => Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: _buildActionButton(action),
            )),
        if (menuActions.isNotEmpty) _buildOverflowMenu(menuActions),
      ],
    );
  }

  Widget _buildActionButton(QuotationAction action) {
    return ElevatedButton.icon(
      onPressed: () => actionManager.executeAction(action),
      icon: Icon(action.icon, size: 16),
      label: Text(action.label),
      style: ElevatedButton.styleFrom(
        foregroundColor: const Color(0xFFF2F2F2),
        backgroundColor:
            action.isPrimary ? const Color(0xFF7450ff) : const Color(0xFF141D3C),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: const BorderSide(color: Color(0xFF777E91)),
        ),
      ),
    );
  }

  Widget _buildOverflowMenu(List<QuotationAction> actions) {
    return PopupMenuButton<QuotationAction>(
      icon: const Icon(Icons.more_vert, color: Color(0xFFF2F2F2)),
      onSelected: actionManager.executeAction,
      itemBuilder: (context) => actions
          .map((action) => PopupMenuItem<QuotationAction>(
                value: action,
                child: ListTile(
                  leading: Icon(action.icon),
                  title: Text(action.label),
                ),
              ))
          .toList(),
    );
  }
}
