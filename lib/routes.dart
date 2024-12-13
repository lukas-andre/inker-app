import 'package:flutter/material.dart';
import 'package:inker_studio/ui/artist/agenda/events/create_event_page.dart';
import 'package:inker_studio/ui/artist/agenda/events/event_page.dart';
import 'package:inker_studio/ui/artist/profile/artist_my_profile_page.dart';
import 'package:inker_studio/ui/customer/quotation/create/create_quotation_page.dart';
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
import 'package:inker_studio/ui/views/error_view.dart';

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
            return AgendaEventDetailPage(eventId: args);
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
      return MaterialPageRoute(
        builder: (context) => QuotationDetailsPage(quotation: args['quotation']),
      );
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

    return null;
  }
}
