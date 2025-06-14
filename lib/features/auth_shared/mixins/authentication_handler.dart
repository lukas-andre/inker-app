import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/features/auth/bloc/auth/auth_bloc.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';

mixin AuthenticationHandler {
  static final navigatorKey = GlobalKey<NavigatorState>();
  static LocalSessionService? _sessionService;

  // Método para inicializar el servicio
  static void init(LocalSessionService sessionService) {
    _sessionService = sessionService;
  }

  static Future<void> handleAuthenticationError() async {
    final context = navigatorKey.currentContext;
    if (context != null) {
      // Obtener la sesión actual
      final session = await _sessionService?.tryGetActiveSession();
      
      if (session != null) {
        // Desloguear usando el AuthBloc
        // ignore: use_build_context_synchronously
        context.read<AuthBloc>().add(AuthLogoutRequested(session));
      }
      
      // Navegar al login
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushNamedAndRemoveUntil(
        '/login',
        (route) => false,
      );
    }
  }
}