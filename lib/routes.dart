import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_event_detail/artist_agenda_event_detail_bloc.dart';
import 'package:inker_studio/domain/blocs/artist_stencil/artist_stencil_bloc.dart';
import 'package:inker_studio/domain/blocs/artist_work/artist_work_bloc.dart';
import 'package:inker_studio/domain/blocs/customer/appointment/appointment_bloc.dart';
import 'package:inker_studio/domain/blocs/tattoo_generator/tattoo_generator_bloc.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/models/consent/form_template.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';
import 'package:inker_studio/domain/models/work/work.dart';
import 'package:inker_studio/ui/artist/agenda/events/create_event_page.dart';
import 'package:inker_studio/ui/artist/agenda/events/event_page.dart';
import 'package:inker_studio/ui/artist/consent/consent_template_detail_page.dart';
import 'package:inker_studio/ui/artist/consent/consent_template_form_page.dart';
import 'package:inker_studio/ui/artist/profile/artist_my_profile_page.dart';
import 'package:inker_studio/ui/artist/stencil/add_stencil_page.dart';
import 'package:inker_studio/ui/artist/stencil/stencil_detail_page.dart';
import 'package:inker_studio/ui/artist/stencil/stencil_gallery_page.dart';
import 'package:inker_studio/ui/artist/work/add_work_page.dart';
import 'package:inker_studio/ui/artist/work/work_detail_page.dart';
import 'package:inker_studio/ui/artist/work/work_gallery_page.dart';
import 'package:inker_studio/ui/customer/appointments/appointment_detail_page.dart';
import 'package:inker_studio/ui/customer/appointments/customer_appointments_page.dart';
import 'package:inker_studio/ui/customer/artist_profile/artist_profile_page.dart' show ArtistProfilePage;
import 'package:inker_studio/ui/customer/artist_profile/artist_reviews/artist_profile_reviews_page.dart';
import 'package:inker_studio/ui/customer/quotation/create/create_quotation_page.dart';
import 'package:inker_studio/ui/notifications/notification_page.dart';
import 'package:inker_studio/features/password_recovery/ui/password_recovery/password_recovery_page.dart' show PasswordRecoveryPage;
import 'package:inker_studio/features/register/ui/register/register_customer_responsive_page.dart';
import 'package:inker_studio/features/register/ui/register/register_artist_responsive_page.dart';
import 'package:inker_studio/features/verification/ui/verification_page.dart';
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
import 'package:inker_studio/ui/tattoo_generator/tattoo_generator_page.dart';
import 'package:inker_studio/ui/tokens/token_purchase_page.dart';
import 'package:inker_studio/ui/views/error_view.dart';
import 'package:inker_studio/ui/immersive_viewer/immersive_viewer_page.dart';
import 'package:inker_studio/ui/quotation/edit_open_quotation_page.dart';

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
      if (args is String) {
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
        builder: (context) => const SettingsPage(),
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
      if (args.containsKey('quotation')) {
        return MaterialPageRoute(
          builder: (context) => QuotationDetailsPage(quotation: args['quotation']),
        );
      } else if (args.containsKey('quotationId')) {
        return MaterialPageRoute(
          builder: (context) => QuotationDetailsPage(quotationId: args['quotationId'].toString()),
        );
      } else {
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(message: 'Parámetros insuficientes'),
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
      if (args['artistId'] == null) {
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(message: 'Artist ID is required'),
        );
      } else if (args['stencil'] != null) {
        return CreateQuotationPage.route(artistId: args['artistId'], stencil: args['stencil']);
      } else {
        return CreateQuotationPage.route(artistId: args['artistId']);
      }
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
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) {
          // Aseguramos que el bloc esté disponible cuando se navega directamente a esta ruta
          return BlocProvider.value(
            value: context.read<ArtistStencilBloc>(),
            child: ArtistProfilePage(artist: args['artist']),
          );
        },
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
            agendaService: context.read(),
            consentService: context.read(),
          ),
          child: const CustomerAppointmentsPage(),
        ),
      );
    }
    
    if (settings.name == '/appointmentDetail') {
      final args = settings.arguments as Map<String, dynamic>;
      if (args.containsKey('appointmentId')) {
        final appointmentId = args['appointmentId'] as String;
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => AppointmentBloc(
              appointmentService: context.read(),
              sessionService: context.read(),
              agendaService: context.read(),
              consentService: context.read(),
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

    if (settings.name == '/artist-profile-reviews') {
      final args = settings.arguments as Artist;
      return MaterialPageRoute(
        builder: (context) => ArtistProfileReviewsPage(artistId: args.id),
      );
    }

    // Stencil-related routes
    if (settings.name == '/stencils') {
      return MaterialPageRoute(
        builder: (context) {
          // Use the global ArtistStencilBloc instead of creating a new one
          return const StencilGalleryPage();
        },
      );
    }
    
    if (settings.name == '/stencils/add') {
      return MaterialPageRoute(
        builder: (context) {
          // Use the global ArtistStencilBloc instead of creating a new one
          return const AddStencilPage();
        },
      );
    }

    // Consent template routes
    if (settings.name == '/consent-template-detail') {
      final template = settings.arguments as FormTemplate;
      return MaterialPageRoute(
        builder: (context) => ConsentTemplateDetailPage(template: template),
      );
    }
    
    if (settings.name == '/consent-template-form') {
      final template = settings.arguments as FormTemplate?; // null for create mode
      return MaterialPageRoute(
        builder: (context) => ConsentTemplateFormPage(template: template),
      );
    }
    
    if (settings.name == '/stencils/detail') {
      if (settings.arguments is Stencil) {
        final stencil = settings.arguments as Stencil;
        return MaterialPageRoute(
          builder: (context) {
            // Use the global ArtistStencilBloc instead of creating a new one
            return StencilDetailPage(stencil: stencil);
          },
        );
      } else {
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(
            message: 'Invalid argument type. Expected a Stencil object.',
          ),
        );
      }
    }
    
    // Work-related routes
    if (settings.name == '/works') {
      return MaterialPageRoute(
        builder: (context) {
          // Use the global ArtistWorkBloc instead of creating a new one
          return BlocProvider.value(
            value: context.read<ArtistWorkBloc>(),
            child: const WorkGalleryPage(),
          );
        },
      );
    }
    
    // Immersive viewer route
    if (settings.name == '/immersive_viewer') {
      // The immersive viewer accepts either a work or stencil in the arguments
      if (settings.arguments is Map<String, dynamic>) {
        final args = settings.arguments as Map<String, dynamic>;
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => 
            ImmersiveViewerPage.fromArguments(context, args),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // Use a fade transition for smooth opening of images
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 200),
        );
      } else {
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(
            message: 'Invalid argument type. Expected a Map with work or stencil.',
          ),
        );
      }
    }
    
    if (settings.name == '/works/add') {
      return MaterialPageRoute(
        builder: (context) {
          // Use the global ArtistWorkBloc instead of creating a new one
          return BlocProvider.value(
            value: context.read<ArtistWorkBloc>(),
            child: const AddWorkPage(),
          );
        },
      );
    }
    
    if (settings.name == '/works/detail') {
      if (settings.arguments is Work) {
        final work = settings.arguments as Work;
        return MaterialPageRoute(
          builder: (context) {
            // Use the global ArtistWorkBloc instead of creating a new one
            return BlocProvider.value(
              value: context.read<ArtistWorkBloc>(),
              child: WorkDetailPage(work: work),
            );
          },
        );
      } else {
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(
            message: 'Invalid argument type. Expected a Work object.',
          ),
        );
      }
    }

    // Tattoo Generator route
    if (settings.name == '/tattoo-generator') {
      return MaterialPageRoute(
        builder: (context) => BlocProvider.value(
          value: context.read<TattooGeneratorBloc>(),
          child: const TattooGeneratorPage(),
        ),
      );
    }

    if (settings.name == TokenPurchasePage.routeName) {
      return MaterialPageRoute(
        builder: (context) => const TokenPurchasePage(),
      );
    }

    if (settings.name == '/editOpenQuotation') {
      final args = settings.arguments as Map<String, dynamic>?;
      final quotation = args != null ? args['quotation'] as Quotation : null;
      if (quotation != null) {
        return MaterialPageRoute(
          builder: (context) => EditOpenQuotationPage(quotation: quotation),
        );
      } else {
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(message: 'No quotation provided for editing.'),
        );
      }
    }

    // Registration routes
    if (settings.name == '/register/customer') {
      return MaterialPageRoute(
        builder: (context) => const RegisterCustomerResponsivePage(),
      );
    }

    if (settings.name == '/register/artist') {
      return MaterialPageRoute(
        builder: (context) => const RegisterArtistResponsivePage(),
      );
    }

    if (settings.name == '/verification') {
      return MaterialPageRoute(
        builder: (context) => const VerificationPage(),
      );
    }

    return null;
  }
}
