import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

enum ActionCategory {
  primary,      // Bottom actions (critical event state changes)
  communication, // AppBar chat
  secondary,    // Overflow menu
}

class EventAction {
  final String id;
  final VoidCallback onPressed;
  final IconData icon;
  final String label;
  final Color color;
  final ActionCategory category;
  final bool isDestructive;

  const EventAction({
    required this.id,
    required this.onPressed,
    required this.icon,
    required this.label,
    required this.color,
    required this.category,
    this.isDestructive = false,
  });
}

class EventActionsConfig {
  final List<EventAction> actions;
  final String? eventTitle;
  final VoidCallback? onRefresh;

  const EventActionsConfig({
    required this.actions,
    this.eventTitle,
    this.onRefresh,
  });

  List<EventAction> get primaryActions => 
      actions.where((a) => a.category == ActionCategory.primary).toList();
  
  List<EventAction> get communicationActions => 
      actions.where((a) => a.category == ActionCategory.communication).toList();
  
  List<EventAction> get secondaryActions => 
      actions.where((a) => a.category == ActionCategory.secondary).toList();
}

class EventActionsManager {
  static AppBar buildAppBar({
    required BuildContext context,
    required String title,
    required EventActionsConfig config,
  }) {
    return AppBar(
      title: Text(
        title,
        style: TextStyleTheme.headline2,
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.white),
      actions: [
        // Chat action (always visible if available)
        ...config.communicationActions.map((action) =>
          IconButton(
            icon: Icon(action.icon),
            onPressed: action.onPressed,
            tooltip: action.label,
          ),
        ),
        
        // Overflow menu for secondary actions
        if (config.secondaryActions.isNotEmpty)
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert),
            onSelected: (actionId) {
              final action = config.secondaryActions
                  .firstWhere((a) => a.id == actionId);
              action.onPressed();
            },
            itemBuilder: (context) => config.secondaryActions
                .map((action) => PopupMenuItem<String>(
                      value: action.id,
                      child: Row(
                        children: [
                          Icon(
                            action.icon,
                            color: action.color,
                            size: 20,
                          ),
                          const SizedBox(width: 12),
                          Text(
                            action.label,
                            style: TextStyleTheme.bodyText1.copyWith(
                              color: action.isDestructive 
                                  ? Colors.red 
                                  : Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ))
                .toList(),
          ),
        
        // Refresh button if available
        if (config.onRefresh != null)
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: config.onRefresh,
            tooltip: 'Actualizar',
          ),
      ],
    );
  }

  static Widget buildBottomActions({
    required BuildContext context,
    required EventActionsConfig config,
    bool isLoading = false,
  }) {
    final primaryActions = config.primaryActions;
    
    if (primaryActions.isEmpty || isLoading) {
      return isLoading ? _buildLoadingState() : const SizedBox.shrink();
    }

    return Container(
      decoration: BoxDecoration(
        color: explorerSecondaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: primaryActions.length == 1
              ? _buildSingleAction(primaryActions.first)
              : _buildMultipleActions(primaryActions),
        ),
      ),
    );
  }

  static Widget _buildLoadingState() {
    return Container(
      decoration: BoxDecoration(
        color: explorerSecondaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          height: 60,
          child: const Center(
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
        ),
      ),
    );
  }

  static Widget _buildSingleAction(EventAction action) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: action.onPressed,
        icon: Icon(action.icon, size: 20),
        label: Text(
          action.label,
          style: TextStyleTheme.button.copyWith(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: action.color,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: action.isDestructive ? 3 : 2,
        ),
      ),
    );
  }

  static Widget _buildMultipleActions(List<EventAction> actions) {
    return Row(
      children: actions.asMap().entries.map((entry) {
        final index = entry.key;
        final action = entry.value;
        
        return Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 0 : 8,
              right: index == actions.length - 1 ? 0 : 8,
            ),
            child: ElevatedButton.icon(
              onPressed: action.onPressed,
              icon: Icon(action.icon, size: 18),
              label: Text(
                action.label,
                style: TextStyleTheme.button.copyWith(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: action.color,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: action.isDestructive ? 3 : 2,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
} 