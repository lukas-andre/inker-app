import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/gps/gps_bloc.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

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
  const EnableGpsMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Debe habilitar el GPS para continuar',
      style: TextStyleTheme.copyWith(fontSize: 18),
    );
  }
}

class AccessButton extends StatelessWidget {
  const AccessButton({
    super.key,
  });

  void _handleAccess(BuildContext context) {
    context.read<GpsBloc>().askGpsAccess();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Es necesario acceder al GPS'),
        const SizedBox(height: 30),
        Platform.isIOS
            ? CupertinoButton(
                child: Text(
                  'Solicitar Acceso',
                  style: TextStyleTheme.copyWith(
                      fontSize: 18, color: CupertinoColors.activeBlue),
                ),
                onPressed: () => _handleAccess(context))
            : MaterialButton(
                color: primaryColor,
                onPressed: () => _handleAccess(context),
                shape: const StadiumBorder(),
                splashColor: Colors.transparent,
                elevation: 0,
                child: Text(
                  'Solicitar acceso',
                  style: TextStyleTheme.copyWith(
                      color: Colors.white, fontSize: 16),
                ),
              ),
      ],
    );
  }
}
