// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Detalles del Evento`
  String get eventDetails {
    return Intl.message(
      'Detalles del Evento',
      name: 'eventDetails',
      desc: '',
      args: [],
    );
  }

  /// `Descripción`
  String get description {
    return Intl.message(
      'Descripción',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Evidencia del Trabajo`
  String get workEvidence {
    return Intl.message(
      'Evidencia del Trabajo',
      name: 'workEvidence',
      desc: '',
      args: [],
    );
  }

  /// `No hay evidencia de trabajo`
  String get noWorkEvidence {
    return Intl.message(
      'No hay evidencia de trabajo',
      name: 'noWorkEvidence',
      desc: '',
      args: [],
    );
  }

  /// `Detalles de la Ubicación`
  String get locationDetails {
    return Intl.message(
      'Detalles de la Ubicación',
      name: 'locationDetails',
      desc: '',
      args: [],
    );
  }

  /// `Editar Evento`
  String get editEvent {
    return Intl.message(
      'Editar Evento',
      name: 'editEvent',
      desc: '',
      args: [],
    );
  }

  /// `Cancelar Evento`
  String get cancelEvent {
    return Intl.message(
      'Cancelar Evento',
      name: 'cancelEvent',
      desc: '',
      args: [],
    );
  }

  /// `Se acerca`
  String get upcomming {
    return Intl.message(
      'Se acerca',
      name: 'upcomming',
      desc: '',
      args: [],
    );
  }

  /// `Finalizado`
  String get completed {
    return Intl.message(
      'Finalizado',
      name: 'completed',
      desc: '',
      args: [],
    );
  }

  /// `Cancelado`
  String get cancelled {
    return Intl.message(
      'Cancelado',
      name: 'cancelled',
      desc: '',
      args: [],
    );
  }

  /// `Cancelar`
  String get cancel {
    return Intl.message(
      'Cancelar',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Editar`
  String get edit {
    return Intl.message(
      'Editar',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Eliminar`
  String get delete {
    return Intl.message(
      'Eliminar',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Confirmar`
  String get confirm {
    return Intl.message(
      'Confirmar',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Ubicación del Evento`
  String get eventLocation {
    return Intl.message(
      'Ubicación del Evento',
      name: 'eventLocation',
      desc: '',
      args: [],
    );
  }

  /// `Crear Evento`
  String get createEvent {
    return Intl.message(
      'Crear Evento',
      name: 'createEvent',
      desc: '',
      args: [],
    );
  }

  /// `Cotizado`
  String get quoted {
    return Intl.message(
      'Cotizado',
      name: 'quoted',
      desc: '',
      args: [],
    );
  }

  /// `Título del Evento`
  String get eventTitle {
    return Intl.message(
      'Título del Evento',
      name: 'eventTitle',
      desc: '',
      args: [],
    );
  }

  /// `Información Adicional`
  String get extraInfo {
    return Intl.message(
      'Información Adicional',
      name: 'extraInfo',
      desc: '',
      args: [],
    );
  }

  /// `Color del Evento`
  String get eventColor {
    return Intl.message(
      'Color del Evento',
      name: 'eventColor',
      desc: '',
      args: [],
    );
  }

  /// `Fecha de Inicio`
  String get startDate {
    return Intl.message(
      'Fecha de Inicio',
      name: 'startDate',
      desc: '',
      args: [],
    );
  }

  /// `Fecha de Fin`
  String get endDate {
    return Intl.message(
      'Fecha de Fin',
      name: 'endDate',
      desc: '',
      args: [],
    );
  }

  /// `Notificación`
  String get notification {
    return Intl.message(
      'Notificación',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Agendar cita`
  String get scheduleEvent {
    return Intl.message(
      'Agendar cita',
      name: 'scheduleEvent',
      desc: '',
      args: [],
    );
  }

  /// `Invitado`
  String get guest {
    return Intl.message(
      'Invitado',
      name: 'guest',
      desc: '',
      args: [],
    );
  }

  /// `Nota`
  String get note {
    return Intl.message(
      'Nota',
      name: 'note',
      desc: '',
      args: [],
    );
  }

  /// `caracteres`
  String get characters {
    return Intl.message(
      'caracteres',
      name: 'characters',
      desc: '',
      args: [],
    );
  }

  /// `Enviar Mensaje`
  String get sendMessage {
    return Intl.message(
      'Enviar Mensaje',
      name: 'sendMessage',
      desc: '',
      args: [],
    );
  }

  /// `Seleccionar servicio`
  String get selectService {
    return Intl.message(
      'Seleccionar servicio',
      name: 'selectService',
      desc: '',
      args: [],
    );
  }

  /// `Hora`
  String get hour {
    return Intl.message(
      'Hora',
      name: 'hour',
      desc: '',
      args: [],
    );
  }

  /// `Duración`
  String get duration {
    return Intl.message(
      'Duración',
      name: 'duration',
      desc: '',
      args: [],
    );
  }

  /// `Tatuaje`
  String get tattoo {
    return Intl.message(
      'Tatuaje',
      name: 'tattoo',
      desc: '',
      args: [],
    );
  }

  /// `Barbería`
  String get barber {
    return Intl.message(
      'Barbería',
      name: 'barber',
      desc: '',
      args: [],
    );
  }

  /// `Piercing`
  String get piercing {
    return Intl.message(
      'Piercing',
      name: 'piercing',
      desc: '',
      args: [],
    );
  }

  /// `Corte de Pelo`
  String get haircut {
    return Intl.message(
      'Corte de Pelo',
      name: 'haircut',
      desc: '',
      args: [],
    );
  }

  /// `Makeup`
  String get makeup {
    return Intl.message(
      'Makeup',
      name: 'makeup',
      desc: '',
      args: [],
    );
  }

  /// `Nails`
  String get nail {
    return Intl.message(
      'Nails',
      name: 'nail',
      desc: '',
      args: [],
    );
  }

  /// `Otro`
  String get other {
    return Intl.message(
      'Otro',
      name: 'other',
      desc: '',
      args: [],
    );
  }

  /// `Por favor seleccione un invitado`
  String get errorMsgGuestValidationError {
    return Intl.message(
      'Por favor seleccione un invitado',
      name: 'errorMsgGuestValidationError',
      desc: '',
      args: [],
    );
  }

  /// `Notas superan el límite de caracteres`
  String get errorMsgNotesValidationError {
    return Intl.message(
      'Notas superan el límite de caracteres',
      name: 'errorMsgNotesValidationError',
      desc: '',
      args: [],
    );
  }

  /// `Por favor seleccione una hora`
  String get errorMsgHoursValidationError {
    return Intl.message(
      'Por favor seleccione una hora',
      name: 'errorMsgHoursValidationError',
      desc: '',
      args: [],
    );
  }

  /// `Crear Cotización`
  String get createQuotation {
    return Intl.message(
      'Crear Cotización',
      name: 'createQuotation',
      desc: '',
      args: [],
    );
  }

  /// `Cargar Más`
  String get loadMore {
    return Intl.message(
      'Cargar Más',
      name: 'loadMore',
      desc: '',
      args: [],
    );
  }

  /// `Responder`
  String get reply {
    return Intl.message(
      'Responder',
      name: 'reply',
      desc: '',
      args: [],
    );
  }

  /// `Enviar`
  String get send {
    return Intl.message(
      'Enviar',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Estado`
  String get status {
    return Intl.message(
      'Estado',
      name: 'status',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'es', countryCode: 'CL'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
