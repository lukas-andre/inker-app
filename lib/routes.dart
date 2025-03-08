import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_event_detail/artist_agenda_event_detail_bloc.dart';
import 'package:inker_studio/domain/blocs/customer/appointment/appointment_bloc.dart';
import 'package:inker_studio/domain/blocs/quoation/quotation_list/quotation_list_bloc.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/ui/artist/agenda/events/create_event_page.dart';
import 'package:inker_studio/ui/artist/agenda/events/event_page.dart';
import 'package:inker_studio/ui/artist/profile/artist_my_profile_page.dart';
import 'package:inker_studio/ui/customer/appointments/appointment_detail_page.dart';
import 'package:inker_studio/ui/customer/appointments/customer_appointments_page.dart';
import 'package:inker_studio/ui/customer/quotation/create/create_quotation_page.dart';
import 'package:inker_studio/ui/notifications/notification_page.dart';
import 'package:inker_studio/ui/password_recovery/password_recovery_page.dart';
import 'package:inker_studio/ui/quotation/artist_quotation_response_page.dart';
import 'package:inker_studio/ui/quotation/customer_quotation_respose_page.dart';
import 'package:inker_studio/ui/quotation/quotation_detail_page.dart';
import 'package:inker_studio/ui/quotation/quotation_list_page.dart';
import 'package:inker_studio/ui/settings/languague_settings_page.dart';
import 'package:inker_studio/ui/settings/privacy_policy_page.dart';
import 'package:inker_studio/ui/settings/settings_page.dart';
import 'package:inker_studio/ui/settings/terms_and_conditions_page.dart';
import 'package:inker_studio/ui/shared/edit_field_page.dart';
import 'package:inker_studio/ui/splash/splash_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/ui/views/error_view.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class AppRoutes {
  static const String home = '/home';

  static Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == '/') {
      return MaterialPageRoute(builder: (context) => const SplashPage());
    }

    if (settings.name == '/createEvent') {
      return MaterialPageRoute(builder: (context) => const CreateEventPage());
    }

    if (settings.name == '/agendaEventDetail') {
      final args = settings.arguments;
      if (args is int) {
        return MaterialPageRoute(
          builder: (context) {
            return BlocProvider(
              create: (context) => ArtistAgendaEventDetailBloc(
                agendaService: context.read(),
                sessionService: context.read(),
              ),
              child: AgendaEventDetailPage(eventId: args),
            );
          },
        );
      } else {
        return MaterialPageRoute(
          builder: (context) {
            return const ErrorPage(
              message: 'Invalid argument type. Expected an integer.',
            );
          },
        );
      }
    }

    if (settings.name == '/settings') {
      return MaterialPageRoute(
        builder: (context) => SettingsPage(),
      );
    }

    if (settings.name == '/languageSettings') {
      return MaterialPageRoute(
        builder: (context) => const LanguageSettingsPage(),
      );
    }

    if (settings.name == '/privacyPolicy') {
      return MaterialPageRoute(
        builder: (context) => const PrivacyPolicyPage(),
      );
    }

    if (settings.name == '/termsAndConditions') {
      return MaterialPageRoute(
        builder: (context) => const TermsAndConditionsPage(),
      );
    }

    if (settings.name == '/quotationList') {
      return MaterialPageRoute(
        builder: (context) => const QuotationListPage(),
      );
    }

    if (settings.name == '/quotationDetail') {
      final args = settings.arguments as Map<String, dynamic>;
      
      // Check if we have a full quotation object or just the ID
      if (args.containsKey('quotation')) {
        // If we have the full quotation object, use it directly
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => 
            QuotationDetailsPage(quotation: args['quotation']),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(0.0, 0.05);
            const end = Offset.zero;
            const curve = Curves.easeInOut;
            
            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);
            
            return SlideTransition(position: offsetAnimation, child: child);
          },
          transitionDuration: const Duration(milliseconds: 300),
        );
      } else if (args.containsKey('quotationId')) {
        // If we only have the ID, fetch the quotation first
        final quotationId = args['quotationId'];
        
        // Create a loading page with an improved UI
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            // Get the QuotationListBloc and fetch the quotation
            final bloc = context.read<QuotationListBloc>();
            
            // Return a loading screen that will fetch the quotation and navigate
            return Scaffold(
              backgroundColor: primaryColor,
              appBar: AppBar(
                title: Text('Cargando detalles...',
                  style: TextStyleTheme.headline2.copyWith(
                    color: Colors.white,
                  ),
                ),
                backgroundColor: primaryColor,
                elevation: 0,
              ),
              body: FutureBuilder(
                future: () async {
                  // Request to load the quotation
                  bloc.add(QuotationListEvent.getQuotationById(quotationId.toString()));
                  
                  // Wait for the bloc to load the quotation
                  await Future.delayed(const Duration(milliseconds: 800));
                  
                  // Get the quotation from the bloc state
                  final state = bloc.state;
                  if (state is QuotationListLoaded) {
                    final quotation = state.quotations.firstWhere(
                      (q) => q.id.toString() == quotationId.toString(),
                      orElse: () => throw Exception('Cotización no encontrada'),
                    );
                    return quotation;
                  } else {
                    throw Exception('Error al cargar la cotización');
                  }
                }(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Use a consistent loader 
                          ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 40, maxHeight: 40),
                            child: const CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 3,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Cargando cotización...',
                            style: TextStyleTheme.headline3.copyWith(
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.error_outline, color: Colors.white, size: 48),
                          const SizedBox(height: 16),
                          Text(
                            'Error: ${snapshot.error}',
                            style: TextStyleTheme.bodyText1.copyWith(
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 24),
                          ElevatedButton(
                            onPressed: () => Navigator.of(context).pop(),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: primaryColor,
                              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                            ),
                            child: const Text('Volver'),
                          ),
                        ],
                      ),
                    );
                  } else if (snapshot.hasData) {
                    // Navigate to the quotation detail page when data is available
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.of(context).pushReplacement(
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => 
                            QuotationDetailsPage(quotation: snapshot.data as Quotation),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            const begin = Offset(0.0, 0.05);
                            const end = Offset.zero;
                            const curve = Curves.easeInOut;
                            
                            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                            var offsetAnimation = animation.drive(tween);
                            
                            return SlideTransition(position: offsetAnimation, child: child);
                          },
                          transitionDuration: const Duration(milliseconds: 300),
                        ),
                      );
                    });
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    );
                  } else {
                    return const Center(
                      child: Text('No hay datos disponibles'),
                    );
                  }
                },
              ),
            );
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
          transitionDuration: const Duration(milliseconds: 250),
        );
      } else {
        // Neither quotation nor quotationId provided
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => 
            const ErrorPage(message: 'Parámetros insuficientes'),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
          transitionDuration: const Duration(milliseconds: 300),
        );
      }
    }

    if (settings.name == '/artistQuotationResponse') {
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => ArtistQuotationResponsePage(
            quotationId: args['quotationId'],
            predefinedAction: args['predefinedAction']),
      );
    }

    if (settings.name == '/customerQuotationResponse') {
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => CustomerQuotationResponsePage(
            quotationId: args['quotationId'],
            predefinedAction: args['predefinedAction']),
      );
    }

    if (settings.name == CreateQuotationPage.routeName) {
      final args = settings.arguments as Map<String, dynamic>;
      return CreateQuotationPage.route(artistId: args['artistId']);
    }

    if (settings.name == '/editField') {
      final args = settings.arguments as EditFieldArguments;
      return MaterialPageRoute(
        builder: (context) {
          return EditFieldPage(arguments: args);
        },
      );
    }

    if (settings.name == '/artistProfile') {
      return MaterialPageRoute(
        builder: (context) => const ArtistMyProfilePage(),
      );
    }

    if (settings.name == '/passwordRecovery') {
      return MaterialPageRoute(
        builder: (context) => const PasswordRecoveryPage(),
      );
    }

    if (settings.name == NotificationsPage.routeName) {
      return MaterialPageRoute(
        builder: (context) => const NotificationsPage(),
      );
    }
    
    if (settings.name == '/appointments') {
      return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => AppointmentBloc(
            appointmentService: context.read(),
            sessionService: context.read(),
          ),
          child: const CustomerAppointmentsPage(),
        ),
      );
    }
    
    if (settings.name == '/appointmentDetail') {
      final args = settings.arguments as Map<String, dynamic>;
      if (args.containsKey('appointmentId')) {
        final appointmentId = args['appointmentId'] as int;
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => AppointmentBloc(
              appointmentService: context.read(),
              sessionService: context.read(),
            ),
            child: AppointmentDetailPage(
              appointmentId: appointmentId,
            ),
          ),
        );
      } else {
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(
            message: 'Appointment ID is required',
          ),
        );
      }
    }

    return null;
  }
}
