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

  /// `es_CL`
  String get locale {
    return Intl.message(
      'es_CL',
      name: 'locale',
      desc: '',
      args: [],
    );
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

  /// `Cancelar Cotización`
  String get cancelQuotationConfirmationTitle {
    return Intl.message(
      'Cancelar Cotización',
      name: 'cancelQuotationConfirmationTitle',
      desc: '',
      args: [],
    );
  }

  /// `¿Estás seguro de que deseas cancelar esta cotización?`
  String get cancelQuotationConfirmationMessage {
    return Intl.message(
      '¿Estás seguro de que deseas cancelar esta cotización?',
      name: 'cancelQuotationConfirmationMessage',
      desc: '',
      args: [],
    );
  }

  /// `Cotización cancelada exitosamente`
  String get quotationCancelledSuccessfully {
    return Intl.message(
      'Cotización cancelada exitosamente',
      name: 'quotationCancelledSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Sí`
  String get yes {
    return Intl.message(
      'Sí',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Cotizaciones`
  String get quotes {
    return Intl.message(
      'Cotizaciones',
      name: 'quotes',
      desc: '',
      args: [],
    );
  }

  /// `Cotización`
  String get quote {
    return Intl.message(
      'Cotización',
      name: 'quote',
      desc: '',
      args: [],
    );
  }

  /// `Detalles de la Cotización`
  String get quoteDetails {
    return Intl.message(
      'Detalles de la Cotización',
      name: 'quoteDetails',
      desc: '',
      args: [],
    );
  }

  /// `Solicitud`
  String get request {
    return Intl.message(
      'Solicitud',
      name: 'request',
      desc: '',
      args: [],
    );
  }

  /// `Solicitudes`
  String get requests {
    return Intl.message(
      'Solicitudes',
      name: 'requests',
      desc: '',
      args: [],
    );
  }

  /// `Detalles de la Solicitud`
  String get requestDetails {
    return Intl.message(
      'Detalles de la Solicitud',
      name: 'requestDetails',
      desc: '',
      args: [],
    );
  }

  /// `Responder Cotización`
  String get respondToQuotation {
    return Intl.message(
      'Responder Cotización',
      name: 'respondToQuotation',
      desc: '',
      args: [],
    );
  }

  /// `Respuesta a la cotización enviada exitosamente`
  String get quotationResponseSuccess {
    return Intl.message(
      'Respuesta a la cotización enviada exitosamente',
      name: 'quotationResponseSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Enviar`
  String get submit {
    return Intl.message(
      'Enviar',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Acción`
  String get action {
    return Intl.message(
      'Acción',
      name: 'action',
      desc: '',
      args: [],
    );
  }

  /// `Obtener Artista`
  String get getArtistActionText {
    return Intl.message(
      'Obtener Artista',
      name: 'getArtistActionText',
      desc: '',
      args: [],
    );
  }

  /// `Costo Estimado`
  String get estimatedCost {
    return Intl.message(
      'Costo Estimado',
      name: 'estimatedCost',
      desc: '',
      args: [],
    );
  }

  /// `Fecha de la Cita`
  String get appointmentDate {
    return Intl.message(
      'Fecha de la Cita',
      name: 'appointmentDate',
      desc: '',
      args: [],
    );
  }

  /// `No seleccionado`
  String get notSelected {
    return Intl.message(
      'No seleccionado',
      name: 'notSelected',
      desc: '',
      args: [],
    );
  }

  /// `Duración de la Cita`
  String get appointmentDuration {
    return Intl.message(
      'Duración de la Cita',
      name: 'appointmentDuration',
      desc: '',
      args: [],
    );
  }

  /// `Campo Requerido`
  String get requiredField {
    return Intl.message(
      'Campo Requerido',
      name: 'requiredField',
      desc: '',
      args: [],
    );
  }

  /// `Número Inválido`
  String get invalidNumber {
    return Intl.message(
      'Número Inválido',
      name: 'invalidNumber',
      desc: '',
      args: [],
    );
  }

  /// `Detalles Adicionales`
  String get additionalDetails {
    return Intl.message(
      'Detalles Adicionales',
      name: 'additionalDetails',
      desc: '',
      args: [],
    );
  }

  /// `Motivo de Rechazo`
  String get rejectionReason {
    return Intl.message(
      'Motivo de Rechazo',
      name: 'rejectionReason',
      desc: '',
      args: [],
    );
  }

  /// `Diseños Propuestos`
  String get proposedDesigns {
    return Intl.message(
      'Diseños Propuestos',
      name: 'proposedDesigns',
      desc: '',
      args: [],
    );
  }

  /// `Rechazar`
  String get reject {
    return Intl.message(
      'Rechazar',
      name: 'reject',
      desc: '',
      args: [],
    );
  }

  /// `Aceptar Apelación`
  String get acceptAppeal {
    return Intl.message(
      'Aceptar Apelación',
      name: 'acceptAppeal',
      desc: '',
      args: [],
    );
  }

  /// `Rechazar Apelación`
  String get rejectAppeal {
    return Intl.message(
      'Rechazar Apelación',
      name: 'rejectAppeal',
      desc: '',
      args: [],
    );
  }

  /// `Detalles de la Cotización`
  String get quotationDetails {
    return Intl.message(
      'Detalles de la Cotización',
      name: 'quotationDetails',
      desc: '',
      args: [],
    );
  }

  /// `Creado en`
  String get createdAt {
    return Intl.message(
      'Creado en',
      name: 'createdAt',
      desc: '',
      args: [],
    );
  }

  /// `Imágenes de Referencia`
  String get referenceImages {
    return Intl.message(
      'Imágenes de Referencia',
      name: 'referenceImages',
      desc: '',
      args: [],
    );
  }

  /// `Tu Respuesta`
  String get yourResponse {
    return Intl.message(
      'Tu Respuesta',
      name: 'yourResponse',
      desc: '',
      args: [],
    );
  }

  /// `Ahora mismo`
  String get justNow {
    return Intl.message(
      'Ahora mismo',
      name: 'justNow',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, =1{hace 1 minuto} other{hace {count} minutos}}`
  String minutesAgo(num count) {
    return Intl.plural(
      count,
      one: 'hace 1 minuto',
      other: 'hace $count minutos',
      name: 'minutesAgo',
      desc: '',
      args: [count],
    );
  }

  /// `{count, plural, =1{hace 1 hora} other{hace {count} horas}}`
  String hoursAgo(num count) {
    return Intl.plural(
      count,
      one: 'hace 1 hora',
      other: 'hace $count horas',
      name: 'hoursAgo',
      desc: '',
      args: [count],
    );
  }

  /// `{count, plural, =1{hace 1 día} other{hace {count} días}}`
  String daysAgo(num count) {
    return Intl.plural(
      count,
      one: 'hace 1 día',
      other: 'hace $count días',
      name: 'daysAgo',
      desc: '',
      args: [count],
    );
  }

  /// `{count, plural, =1{hace 1 mes} other{hace {count} meses}}`
  String monthsAgo(num count) {
    return Intl.plural(
      count,
      one: 'hace 1 mes',
      other: 'hace $count meses',
      name: 'monthsAgo',
      desc: '',
      args: [count],
    );
  }

  /// `{count, plural, =1{hace 1 año} other{hace {count} años}}`
  String yearsAgo(num count) {
    return Intl.plural(
      count,
      one: 'hace 1 año',
      other: 'hace $count años',
      name: 'yearsAgo',
      desc: '',
      args: [count],
    );
  }

  /// `El costo estimado es solo una estimación y puede variar según el trabajo real`
  String get estimatedCostDisclaimer {
    return Intl.message(
      'El costo estimado es solo una estimación y puede variar según el trabajo real',
      name: 'estimatedCostDisclaimer',
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
