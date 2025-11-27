import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/gps/gps_bloc.dart';
import 'package:inker_studio/domain/services/platform/platform_service.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class GpsAccessScreen extends StatelessWidget {
  const GpsAccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<GpsBloc, GpsState>(
          builder: (context, state) {
            return !state.isGpsEnabled
                ? const EnableGpsMessage()
                : const AccessButton();
          },
        ),
      ),
    );
  }
}

class EnableGpsMessage extends StatelessWidget {
  static const String enableGpsMessage = 'Debe habilitar el GPS para continuar';
  const EnableGpsMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      enableGpsMessage,
      style: TextStyleTheme.copyWith(fontSize: 18),
    );
  }
}

class AccessButton extends StatelessWidget {
  static const String title = 'Es necesario acceder al GPS';
  static const String accessButtonText = 'Solicitar acceso';

  const AccessButton({
    super.key,
  });

  void _handleAccess(BuildContext context) {
    context.read<GpsBloc>().askGpsAccess();
  }

  @override
  Widget build(BuildContext context) {
    final platformService = context.read<PlatformService>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(title),
        const SizedBox(height: 30),
        platformService.isIOS
            ? CupertinoButton(
                child: Text(
                  accessButtonText,
                  style: TextStyleTheme.copyWith(
                      fontSize: 18, color: CupertinoColors.activeBlue),
                ),
                onPressed: () => _handleAccess(context))
            : MaterialButton(
                color: Theme.of(context).colorScheme.surface,
                onPressed: () => _handleAccess(context),
                shape: const StadiumBorder(),
                splashColor: Colors.transparent,
                elevation: 0,
                child: Text(
                  accessButtonText,
                  style: TextStyleTheme.copyWith(
                      color: Colors.white, fontSize: 16),
                ),
              ),
      ],
    );
  }
}
