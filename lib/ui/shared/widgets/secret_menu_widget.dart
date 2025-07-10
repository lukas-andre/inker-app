import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/environment/environment_bloc.dart';
import 'package:inker_studio/domain/models/environment/environment.dart';
import 'package:inker_studio/generated/l10n.dart';

class SecretMenuWidget extends StatefulWidget {
  final Widget child;
  final int requiredTaps;
  final Duration timeWindow;
  
  const SecretMenuWidget({
    super.key,
    required this.child,
    this.requiredTaps = 5,
    this.timeWindow = const Duration(seconds: 2),
  });
  
  @override
  State<SecretMenuWidget> createState() => _SecretMenuWidgetState();
}

class _SecretMenuWidgetState extends State<SecretMenuWidget> {
  int _tapCount = 0;
  Timer? _resetTimer;
  
  void _handleTap() {
    _tapCount++;
    
    // Cancel existing timer
    _resetTimer?.cancel();
    
    // Check if required taps reached
    if (_tapCount >= widget.requiredTaps) {
      _showEnvironmentDialog();
      _resetTapCount();
    } else {
      // Set timer to reset tap count
      _resetTimer = Timer(widget.timeWindow, _resetTapCount);
    }
  }
  
  void _resetTapCount() {
    setState(() {
      _tapCount = 0;
    });
    _resetTimer?.cancel();
  }
  
  void _showEnvironmentDialog() {
    showDialog(
      context: context,
      builder: (dialogContext) => BlocProvider.value(
        value: context.read<EnvironmentBloc>(),
        child: const _EnvironmentDialog(),
      ),
    );
  }
  
  @override
  void dispose() {
    _resetTimer?.cancel();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      behavior: HitTestBehavior.opaque,
      child: widget.child,
    );
  }
}

class _EnvironmentDialog extends StatelessWidget {
  const _EnvironmentDialog();
  
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EnvironmentBloc, EnvironmentState>(
      listener: (context, state) {
        state.whenOrNull(
          changed: (previous, newEnv) {
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Ambiente cambiado a: ${newEnv.name}'),
                backgroundColor: Colors.green,
                duration: const Duration(seconds: 3),
              ),
            );
          },
          error: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Error: $message'),
                backgroundColor: Colors.red,
              ),
            );
          },
        );
      },
      builder: (context, state) {
        return AlertDialog(
          backgroundColor: Theme.of(context).colorScheme.surface,
          title: Text(
            'Seleccionar Ambiente',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          content: state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (current, available) => _buildEnvironmentsList(
              context,
              current,
              available,
            ),
            changed: (_, __) => const Center(child: CircularProgressIndicator()),
            error: (message) => Text('Error: $message'),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                S.of(context).cancel,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
  
  Widget _buildEnvironmentsList(
    BuildContext context,
    Environment current,
    EnvironmentsConfig available,
  ) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ambiente actual: ${current.name}',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          ...available.environments.entries.map((entry) {
            final env = entry.value;
            final isSelected = env.id == current.id;
            
            return RadioListTile<String>(
              title: Text(
                env.name,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    env.description,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                    ),
                  ),
                  Text(
                    env.apiUrl,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              value: env.id,
              groupValue: current.id,
              selected: isSelected,
              activeColor: Theme.of(context).colorScheme.secondary,
              selectedTileColor: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
              onChanged: (value) {
                if (value != null && !isSelected) {
                  context.read<EnvironmentBloc>().add(
                    EnvironmentEvent.changeEnvironment(
                      environmentId: value,
                    ),
                  );
                }
              },
            );
          }).toList(),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.amber.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.amber),
            ),
            child: Row(
              children: [
                const Icon(Icons.warning, color: Colors.amber, size: 20),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Cambiar el ambiente reiniciará las conexiones activas',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}