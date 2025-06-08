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
      desc: 'Código de idioma y país para la localización.',
      args: [],
    );
  }

  /// `Detalles del Evento`
  String get eventDetails {
    return Intl.message(
      'Detalles del Evento',
      name: 'eventDetails',
      desc: 'Título de la sección de detalles del evento.',
      args: [],
    );
  }

  /// `Actualizar`
  String get refresh {
    return Intl.message(
      'Actualizar',
      name: 'refresh',
      desc: 'Acción para actualizar algo.',
      args: [],
    );
  }

  /// `Descripción`
  String get description {
    return Intl.message(
      'Descripción',
      name: 'description',
      desc: 'Etiqueta de descripción para un evento o cotización.',
      args: [],
    );
  }

  /// `Evidencia del Trabajo`
  String get workEvidence {
    return Intl.message(
      'Evidencia del Trabajo',
      name: 'workEvidence',
      desc: 'Texto que describe la evidencia del trabajo realizado.',
      args: [],
    );
  }

  /// `No hay evidencia de trabajo`
  String get noWorkEvidence {
    return Intl.message(
      'No hay evidencia de trabajo',
      name: 'noWorkEvidence',
      desc: 'Mensaje mostrado cuando no hay evidencia del trabajo.',
      args: [],
    );
  }

  /// `Detalles de la Ubicación`
  String get locationDetails {
    return Intl.message(
      'Detalles de la Ubicación',
      name: 'locationDetails',
      desc: 'Etiqueta para los detalles de la ubicación del evento.',
      args: [],
    );
  }

  /// `Editar Evento`
  String get editEvent {
    return Intl.message(
      'Editar Evento',
      name: 'editEvent',
      desc: 'Botón para editar un evento.',
      args: [],
    );
  }

  /// `Cancelar Evento`
  String get cancelEvent {
    return Intl.message(
      'Cancelar Evento',
      name: 'cancelEvent',
      desc: 'Botón para cancelar un evento.',
      args: [],
    );
  }

  /// `Se acerca`
  String get upcomming {
    return Intl.message(
      'Se acerca',
      name: 'upcomming',
      desc: 'Estado que indica que un evento se aproxima.',
      args: [],
    );
  }

  /// `Completada`
  String get completed {
    return Intl.message(
      'Completada',
      name: 'completed',
      desc: 'Estado de una cita completada.',
      args: [],
    );
  }

  /// `Cancelado`
  String get cancelled {
    return Intl.message(
      'Cancelado',
      name: 'cancelled',
      desc: 'Estado que indica que un evento ha sido cancelado.',
      args: [],
    );
  }

  /// `Cancelar`
  String get cancel {
    return Intl.message(
      'Cancelar',
      name: 'cancel',
      desc: 'Botón para cancelar una acción.',
      args: [],
    );
  }

  /// `Editar`
  String get edit {
    return Intl.message(
      'Editar',
      name: 'edit',
      desc: 'Etiqueta o botón para editar.',
      args: [],
    );
  }

  /// `Eliminar`
  String get delete {
    return Intl.message(
      'Eliminar',
      name: 'delete',
      desc: 'Etiqueta o botón para eliminar.',
      args: [],
    );
  }

  /// `Confirmar`
  String get confirm {
    return Intl.message(
      'Confirmar',
      name: 'confirm',
      desc: 'Etiqueta o botón para confirmar.',
      args: [],
    );
  }

  /// `Ubicación del Evento`
  String get eventLocation {
    return Intl.message(
      'Ubicación del Evento',
      name: 'eventLocation',
      desc: 'Etiqueta que muestra la ubicación del evento.',
      args: [],
    );
  }

  /// `Crear Evento`
  String get createEvent {
    return Intl.message(
      'Crear Evento',
      name: 'createEvent',
      desc: 'Botón para crear un nuevo evento.',
      args: [],
    );
  }

  /// `Cotizado`
  String get quoted {
    return Intl.message(
      'Cotizado',
      name: 'quoted',
      desc: 'Etiqueta que indica que un evento ha sido cotizado.',
      args: [],
    );
  }

  /// `Título del Evento`
  String get eventTitle {
    return Intl.message(
      'Título del Evento',
      name: 'eventTitle',
      desc: 'Etiqueta que indica el título del evento.',
      args: [],
    );
  }

  /// `Información Adicional`
  String get extraInfo {
    return Intl.message(
      'Información Adicional',
      name: 'extraInfo',
      desc: 'Etiqueta para información adicional en un formulario o evento.',
      args: [],
    );
  }

  /// `Color del Evento`
  String get eventColor {
    return Intl.message(
      'Color del Evento',
      name: 'eventColor',
      desc: 'Campo que muestra el color asignado al evento.',
      args: [],
    );
  }

  /// `Fecha de Inicio`
  String get startDate {
    return Intl.message(
      'Fecha de Inicio',
      name: 'startDate',
      desc: 'Campo que indica la fecha de inicio del evento.',
      args: [],
    );
  }

  /// `Fecha de Fin`
  String get endDate {
    return Intl.message(
      'Fecha de Fin',
      name: 'endDate',
      desc: 'Campo que indica la fecha de fin del evento.',
      args: [],
    );
  }

  /// `Notificación`
  String get notification {
    return Intl.message(
      'Notificación',
      name: 'notification',
      desc: 'Etiqueta para notificaciones.',
      args: [],
    );
  }

  /// `Agendar cita`
  String get scheduleEvent {
    return Intl.message(
      'Agendar cita',
      name: 'scheduleEvent',
      desc: 'Botón para agendar una cita.',
      args: [],
    );
  }

  /// `Invitado`
  String get guest {
    return Intl.message(
      'Invitado',
      name: 'guest',
      desc: 'Etiqueta para los invitados de un evento.',
      args: [],
    );
  }

  /// `Nota`
  String get note {
    return Intl.message(
      'Nota',
      name: 'note',
      desc: 'Etiqueta para una nota adicional.',
      args: [],
    );
  }

  /// `caracteres`
  String get characters {
    return Intl.message(
      'caracteres',
      name: 'characters',
      desc: 'Etiqueta que muestra el número de caracteres.',
      args: [],
    );
  }

  /// `Enviar Mensaje`
  String get sendMessage {
    return Intl.message(
      'Enviar Mensaje',
      name: 'sendMessage',
      desc: 'Botón para enviar un mensaje.',
      args: [],
    );
  }

  /// `Seleccionar servicio`
  String get selectService {
    return Intl.message(
      'Seleccionar servicio',
      name: 'selectService',
      desc:
          'Etiqueta para seleccionar un servicio durante la creación de un evento o cotización.',
      args: [],
    );
  }

  /// `Hora`
  String get hour {
    return Intl.message(
      'Hora',
      name: 'hour',
      desc: 'Campo o etiqueta para la hora.',
      args: [],
    );
  }

  /// `Duración`
  String get duration {
    return Intl.message(
      'Duración',
      name: 'duration',
      desc: 'Campo o etiqueta para la duración del evento o servicio.',
      args: [],
    );
  }

  /// `Tatuaje`
  String get tattoo {
    return Intl.message(
      'Tatuaje',
      name: 'tattoo',
      desc: 'Opción para seleccionar tatuaje como servicio.',
      args: [],
    );
  }

  /// `Barbería`
  String get barber {
    return Intl.message(
      'Barbería',
      name: 'barber',
      desc: 'Opción para seleccionar barbería como servicio.',
      args: [],
    );
  }

  /// `Piercing`
  String get piercing {
    return Intl.message(
      'Piercing',
      name: 'piercing',
      desc: 'Opción para seleccionar piercing como servicio.',
      args: [],
    );
  }

  /// `Corte de Pelo`
  String get haircut {
    return Intl.message(
      'Corte de Pelo',
      name: 'haircut',
      desc: 'Opción para seleccionar corte de pelo como servicio.',
      args: [],
    );
  }

  /// `Makeup`
  String get makeup {
    return Intl.message(
      'Makeup',
      name: 'makeup',
      desc: 'Opción para seleccionar maquillaje como servicio.',
      args: [],
    );
  }

  /// `Nails`
  String get nail {
    return Intl.message(
      'Nails',
      name: 'nail',
      desc: 'Opción para seleccionar uñas como servicio.',
      args: [],
    );
  }

  /// `Otro`
  String get other {
    return Intl.message(
      'Otro',
      name: 'other',
      desc: 'Etiqueta para el tipo de consentimiento otro.',
      args: [],
    );
  }

  /// `Por favor seleccione un invitado`
  String get errorMsgGuestValidationError {
    return Intl.message(
      'Por favor seleccione un invitado',
      name: 'errorMsgGuestValidationError',
      desc: 'Mensaje de error cuando no se ha seleccionado un invitado.',
      args: [],
    );
  }

  /// `Notas superan el límite de caracteres`
  String get errorMsgNotesValidationError {
    return Intl.message(
      'Notas superan el límite de caracteres',
      name: 'errorMsgNotesValidationError',
      desc: 'Mensaje de error cuando las notas superan el límite permitido.',
      args: [],
    );
  }

  /// `Por favor seleccione una hora`
  String get errorMsgHoursValidationError {
    return Intl.message(
      'Por favor seleccione una hora',
      name: 'errorMsgHoursValidationError',
      desc: 'Mensaje de error cuando no se ha seleccionado una hora.',
      args: [],
    );
  }

  /// `Crear Cotización`
  String get createQuotation {
    return Intl.message(
      'Crear Cotización',
      name: 'createQuotation',
      desc: 'Botón para crear una cotización.',
      args: [],
    );
  }

  /// `Cargar Más`
  String get loadMore {
    return Intl.message(
      'Cargar Más',
      name: 'loadMore',
      desc: 'Botón para cargar más elementos.',
      args: [],
    );
  }

  /// `Responder`
  String get reply {
    return Intl.message(
      'Responder',
      name: 'reply',
      desc: 'Botón para responder a un mensaje o cotización.',
      args: [],
    );
  }

  /// `Enviar`
  String get send {
    return Intl.message(
      'Enviar',
      name: 'send',
      desc: 'Botón para enviar un formulario o mensaje.',
      args: [],
    );
  }

  /// `Cancelar Cotización`
  String get cancelQuotationConfirmationTitle {
    return Intl.message(
      'Cancelar Cotización',
      name: 'cancelQuotationConfirmationTitle',
      desc: 'Título del mensaje de confirmación para cancelar una cotización.',
      args: [],
    );
  }

  /// `¿Estás seguro de que deseas cancelar esta cotización?`
  String get cancelQuotationConfirmationMessage {
    return Intl.message(
      '¿Estás seguro de que deseas cancelar esta cotización?',
      name: 'cancelQuotationConfirmationMessage',
      desc: 'Mensaje de confirmación para cancelar una cotización.',
      args: [],
    );
  }

  /// `Cotización cancelada exitosamente`
  String get quotationCancelledSuccessfully {
    return Intl.message(
      'Cotización cancelada exitosamente',
      name: 'quotationCancelledSuccessfully',
      desc:
          'Mensaje mostrado cuando una cotización ha sido cancelada exitosamente.',
      args: [],
    );
  }

  /// `Cotizaciones`
  String get quotes {
    return Intl.message(
      'Cotizaciones',
      name: 'quotes',
      desc: 'Campo o etiqueta para el número de cotizaciones.',
      args: [],
    );
  }

  /// `Cotización`
  String get quote {
    return Intl.message(
      'Cotización',
      name: 'quote',
      desc: 'Campo o etiqueta para una cotización.',
      args: [],
    );
  }

  /// `Detalles de la Cotización`
  String get quoteDetails {
    return Intl.message(
      'Detalles de la Cotización',
      name: 'quoteDetails',
      desc: 'Etiqueta para mostrar los detalles de una cotización.',
      args: [],
    );
  }

  /// `Solicitud`
  String get request {
    return Intl.message(
      'Solicitud',
      name: 'request',
      desc: 'Campo o etiqueta para una solicitud.',
      args: [],
    );
  }

  /// `Solicitudes`
  String get requests {
    return Intl.message(
      'Solicitudes',
      name: 'requests',
      desc: 'Campo o etiqueta para las solicitudes.',
      args: [],
    );
  }

  /// `Detalles de la Solicitud`
  String get requestDetails {
    return Intl.message(
      'Detalles de la Solicitud',
      name: 'requestDetails',
      desc: 'Etiqueta para mostrar los detalles de una solicitud.',
      args: [],
    );
  }

  /// `Responder Cotización`
  String get respondToQuotation {
    return Intl.message(
      'Responder Cotización',
      name: 'respondToQuotation',
      desc: 'Botón para responder a una cotización.',
      args: [],
    );
  }

  /// `Respuesta a la cotización enviada exitosamente`
  String get quotationResponseSuccess {
    return Intl.message(
      'Respuesta a la cotización enviada exitosamente',
      name: 'quotationResponseSuccess',
      desc:
          'Mensaje de éxito cuando la respuesta a la cotización ha sido enviada correctamente.',
      args: [],
    );
  }

  /// `Enviar`
  String get submit {
    return Intl.message(
      'Enviar',
      name: 'submit',
      desc: 'Botón para enviar un formulario.',
      args: [],
    );
  }

  /// `Acción`
  String get action {
    return Intl.message(
      'Acción',
      name: 'action',
      desc: 'Campo o etiqueta para realizar una acción.',
      args: [],
    );
  }

  /// `Obtener Artista`
  String get getArtistActionText {
    return Intl.message(
      'Obtener Artista',
      name: 'getArtistActionText',
      desc: 'Texto que indica la acción de obtener un artista.',
      args: [],
    );
  }

  /// `Costo Estimado`
  String get estimatedCost {
    return Intl.message(
      'Costo Estimado',
      name: 'estimatedCost',
      desc: 'Campo o etiqueta para el costo estimado de un servicio.',
      args: [],
    );
  }

  /// `Fecha de la Cita`
  String get appointmentDate {
    return Intl.message(
      'Fecha de la Cita',
      name: 'appointmentDate',
      desc: 'Campo para seleccionar o mostrar la fecha de una cita.',
      args: [],
    );
  }

  /// `No seleccionado`
  String get notSelected {
    return Intl.message(
      'No seleccionado',
      name: 'notSelected',
      desc: 'Etiqueta para indicar que un valor no ha sido seleccionado.',
      args: [],
    );
  }

  /// `Duración de la Cita`
  String get appointmentDuration {
    return Intl.message(
      'Duración de la Cita',
      name: 'appointmentDuration',
      desc: 'Campo o etiqueta para la duración de una cita.',
      args: [],
    );
  }

  /// `Campo Requerido`
  String get requiredField {
    return Intl.message(
      'Campo Requerido',
      name: 'requiredField',
      desc: 'Mensaje para indicar que un campo es obligatorio.',
      args: [],
    );
  }

  /// `Número Inválido`
  String get invalidNumber {
    return Intl.message(
      'Número Inválido',
      name: 'invalidNumber',
      desc: 'Mensaje de error cuando se ingresa un número inválido.',
      args: [],
    );
  }

  /// `Detalles Adicionales`
  String get additionalDetails {
    return Intl.message(
      'Detalles Adicionales',
      name: 'additionalDetails',
      desc: 'Campo o etiqueta para mostrar o ingresar detalles adicionales.',
      args: [],
    );
  }

  /// `Motivo de Rechazo`
  String get rejectionReason {
    return Intl.message(
      'Motivo de Rechazo',
      name: 'rejectionReason',
      desc:
          'Campo para mostrar o ingresar el motivo de rechazo de una solicitud.',
      args: [],
    );
  }

  /// `Diseños Propuestos`
  String get proposedDesigns {
    return Intl.message(
      'Diseños Propuestos',
      name: 'proposedDesigns',
      desc: 'Campo o etiqueta para mostrar los diseños propuestos.',
      args: [],
    );
  }

  /// `Rechazar`
  String get reject {
    return Intl.message(
      'Rechazar',
      name: 'reject',
      desc: 'Botón para rechazar una solicitud.',
      args: [],
    );
  }

  /// `Aceptar Apelación`
  String get acceptAppeal {
    return Intl.message(
      'Aceptar Apelación',
      name: 'acceptAppeal',
      desc: 'Botón para aceptar una apelación.',
      args: [],
    );
  }

  /// `Rechazar Apelación`
  String get rejectAppeal {
    return Intl.message(
      'Rechazar Apelación',
      name: 'rejectAppeal',
      desc: 'Botón para rechazar una apelación.',
      args: [],
    );
  }

  /// `Detalles de la Cotización`
  String get quotationDetails {
    return Intl.message(
      'Detalles de la Cotización',
      name: 'quotationDetails',
      desc: 'Campo o etiqueta para mostrar los detalles de una cotización.',
      args: [],
    );
  }

  /// `Creado en`
  String get createdAt {
    return Intl.message(
      'Creado en',
      name: 'createdAt',
      desc:
          'Campo o etiqueta para mostrar la fecha y hora en que fue creada una solicitud o cotización.',
      args: [],
    );
  }

  /// `Imágenes de Referencia`
  String get referenceImages {
    return Intl.message(
      'Imágenes de Referencia',
      name: 'referenceImages',
      desc: 'Campo para mostrar o subir imágenes de referencia.',
      args: [],
    );
  }

  /// `Tu Respuesta`
  String get yourResponse {
    return Intl.message(
      'Tu Respuesta',
      name: 'yourResponse',
      desc:
          'Campo o etiqueta para mostrar o ingresar la respuesta del usuario.',
      args: [],
    );
  }

  /// `Ahora mismo`
  String get justNow {
    return Intl.message(
      'Ahora mismo',
      name: 'justNow',
      desc: 'Mensaje que indica que algo ocurrió hace poco.',
      args: [],
    );
  }

  /// `{count, plural, =1{hace 1 minuto} other{hace {count} minutos}}`
  String minutesAgo(int count) {
    return Intl.plural(
      count,
      one: 'hace 1 minuto',
      other: 'hace $count minutos',
      name: 'minutesAgo',
      desc: 'Mensaje que indica cuántos minutos han pasado desde un evento.',
      args: [count],
    );
  }

  /// `{count, plural, =1{hace 1 hora} other{hace {count} horas}}`
  String hoursAgo(int count) {
    return Intl.plural(
      count,
      one: 'hace 1 hora',
      other: 'hace $count horas',
      name: 'hoursAgo',
      desc: 'Mensaje que indica cuántas horas han pasado desde un evento.',
      args: [count],
    );
  }

  /// `{count, plural, =1{hace 1 día} other{hace {count} días}}`
  String daysAgo(int count) {
    return Intl.plural(
      count,
      one: 'hace 1 día',
      other: 'hace $count días',
      name: 'daysAgo',
      desc: 'Mensaje que indica cuántos días han pasado desde un evento.',
      args: [count],
    );
  }

  /// `{count, plural, =1{hace 1 mes} other{hace {count} meses}}`
  String monthsAgo(int count) {
    return Intl.plural(
      count,
      one: 'hace 1 mes',
      other: 'hace $count meses',
      name: 'monthsAgo',
      desc: 'Mensaje que indica cuántos meses han pasado desde un evento.',
      args: [count],
    );
  }

  /// `{count, plural, =1{hace 1 año} other{hace {count} años}}`
  String yearsAgo(int count) {
    return Intl.plural(
      count,
      one: 'hace 1 año',
      other: 'hace $count años',
      name: 'yearsAgo',
      desc: 'Mensaje que indica cuántos años han pasado desde un evento.',
      args: [count],
    );
  }

  /// `El costo estimado es solo una estimación y puede variar según el trabajo real`
  String get estimatedCostDisclaimer {
    return Intl.message(
      'El costo estimado es solo una estimación y puede variar según el trabajo real',
      name: 'estimatedCostDisclaimer',
      desc:
          'Mensaje que indica que el costo estimado es aproximado y puede cambiar.',
      args: [],
    );
  }

  /// `Asistente de agenda`
  String get scheduleAssistant {
    return Intl.message(
      'Asistente de agenda',
      name: 'scheduleAssistant',
      desc: 'Título o etiqueta para el asistente de programación de citas.',
      args: [],
    );
  }

  /// `Seleccionar Fecha y Hora`
  String get selectDateTime {
    return Intl.message(
      'Seleccionar Fecha y Hora',
      name: 'selectDateTime',
      desc: 'Campo o botón para seleccionar la fecha y hora de un evento.',
      args: [],
    );
  }

  /// `Aceptar`
  String get accept {
    return Intl.message(
      'Aceptar',
      name: 'accept',
      desc: 'Botón para aceptar una acción o solicitud.',
      args: [],
    );
  }

  /// `La duración no puede ser cero`
  String get durationCannotBeZero {
    return Intl.message(
      'La duración no puede ser cero',
      name: 'durationCannotBeZero',
      desc: 'Mensaje de error cuando la duración de un evento es cero.',
      args: [],
    );
  }

  /// `Fecha y Hora de la Cita`
  String get appointmentDateTime {
    return Intl.message(
      'Fecha y Hora de la Cita',
      name: 'appointmentDateTime',
      desc: 'Campo para seleccionar o mostrar la fecha y hora de una cita.',
      args: [],
    );
  }

  /// `Seleccionar Fecha`
  String get selectDate {
    return Intl.message(
      'Seleccionar Fecha',
      name: 'selectDate',
      desc: 'Campo o botón para seleccionar la fecha de un evento.',
      args: [],
    );
  }

  /// `Seleccionar Hora`
  String get selectTime {
    return Intl.message(
      'Seleccionar Hora',
      name: 'selectTime',
      desc: 'Campo o botón para seleccionar la hora de un evento.',
      args: [],
    );
  }

  /// `Seleccionar Duración`
  String get selectDuration {
    return Intl.message(
      'Seleccionar Duración',
      name: 'selectDuration',
      desc: 'Campo o botón para seleccionar la duración de un evento.',
      args: [],
    );
  }

  /// `Evento Tentativo`
  String get tentativeEvent {
    return Intl.message(
      'Evento Tentativo',
      name: 'tentativeEvent',
      desc: 'Etiqueta para indicar que un evento es tentativo.',
      args: [],
    );
  }

  /// `Desde`
  String get from {
    return Intl.message(
      'Desde',
      name: 'from',
      desc: 'Campo o etiqueta que indica el inicio de un intervalo.',
      args: [],
    );
  }

  /// `Hasta`
  String get to {
    return Intl.message(
      'Hasta',
      name: 'to',
      desc: 'Campo o etiqueta que indica el final de un intervalo.',
      args: [],
    );
  }

  /// `minutos`
  String get minutes {
    return Intl.message(
      'minutos',
      name: 'minutes',
      desc: 'Etiqueta que indica minutos.',
      args: [],
    );
  }

  /// `horas`
  String get hours {
    return Intl.message(
      'horas',
      name: 'hours',
      desc: 'Etiqueta que indica horas.',
      args: [],
    );
  }

  /// `No hay eventos programados para hoy`
  String get noEventsToday {
    return Intl.message(
      'No hay eventos programados para hoy',
      name: 'noEventsToday',
      desc:
          'Mensaje que indica que no hay eventos programados para el día actual.',
      args: [],
    );
  }

  /// `Esta hora entra en conflicto con un evento existente`
  String get conflictingEvent {
    return Intl.message(
      'Esta hora entra en conflicto con un evento existente',
      name: 'conflictingEvent',
      desc:
          'Mensaje que indica que el horario seleccionado entra en conflicto con otro evento.',
      args: [],
    );
  }

  /// `Confirmar Selección de Hora`
  String get confirmTimeSelection {
    return Intl.message(
      'Confirmar Selección de Hora',
      name: 'confirmTimeSelection',
      desc: 'Botón para confirmar la selección de una hora.',
      args: [],
    );
  }

  /// `Cambiar Selección`
  String get changeSelection {
    return Intl.message(
      'Cambiar Selección',
      name: 'changeSelection',
      desc: 'Botón para cambiar la selección de un horario.',
      args: [],
    );
  }

  /// `Superposición de Eventos`
  String get eventOverlap {
    return Intl.message(
      'Superposición de Eventos',
      name: 'eventOverlap',
      desc: 'Etiqueta que indica que hay una superposición de eventos.',
      args: [],
    );
  }

  /// `Este evento se superpone con un evento existente. ¿Deseas continuar?`
  String get eventOverlapMessage {
    return Intl.message(
      'Este evento se superpone con un evento existente. ¿Deseas continuar?',
      name: 'eventOverlapMessage',
      desc:
          'Mensaje que pregunta si se desea continuar con la creación de un evento a pesar de una superposición de horarios.',
      args: [],
    );
  }

  /// `Continuar`
  String get proceed {
    return Intl.message(
      'Continuar',
      name: 'proceed',
      desc: 'Botón para proceder con una acción.',
      args: [],
    );
  }

  /// `Volver`
  String get goBack {
    return Intl.message(
      'Volver',
      name: 'goBack',
      desc: 'Botón para regresar a la pantalla anterior.',
      args: [],
    );
  }

  /// `Acercar`
  String get zoomIn {
    return Intl.message(
      'Acercar',
      name: 'zoomIn',
      desc: 'Botón para acercar un mapa o imagen.',
      args: [],
    );
  }

  /// `Alejar`
  String get zoomOut {
    return Intl.message(
      'Alejar',
      name: 'zoomOut',
      desc: 'Botón para alejar un mapa o imagen.',
      args: [],
    );
  }

  /// `Restablecer Zoom`
  String get resetZoom {
    return Intl.message(
      'Restablecer Zoom',
      name: 'resetZoom',
      desc: 'Botón para restablecer el nivel de zoom.',
      args: [],
    );
  }

  /// `Hoy`
  String get today {
    return Intl.message(
      'Hoy',
      name: 'today',
      desc: 'Etiqueta que indica el día actual.',
      args: [],
    );
  }

  /// `Semana Anterior`
  String get previousWeek {
    return Intl.message(
      'Semana Anterior',
      name: 'previousWeek',
      desc: 'Botón para navegar a la semana anterior en el calendario.',
      args: [],
    );
  }

  /// `Semana Siguiente`
  String get nextWeek {
    return Intl.message(
      'Semana Siguiente',
      name: 'nextWeek',
      desc: 'Botón para navegar a la semana siguiente en el calendario.',
      args: [],
    );
  }

  /// `Este horario no está disponible`
  String get timeSlotUnavailable {
    return Intl.message(
      'Este horario no está disponible',
      name: 'timeSlotUnavailable',
      desc: 'Mensaje que indica que un horario no está disponible.',
      args: [],
    );
  }

  /// `Por favor, selecciona un rango de tiempo válido`
  String get selectValidTimeRange {
    return Intl.message(
      'Por favor, selecciona un rango de tiempo válido',
      name: 'selectValidTimeRange',
      desc:
          'Mensaje de error que indica que se debe seleccionar un rango de tiempo válido.',
      args: [],
    );
  }

  /// `Fecha De Cotización`
  String get quotationDate {
    return Intl.message(
      'Fecha De Cotización',
      name: 'quotationDate',
      desc: 'Campo para mostrar o seleccionar la fecha de una cotización.',
      args: [],
    );
  }

  /// `y`
  String get and {
    return Intl.message(
      'y',
      name: 'and',
      desc: 'Conjunción para conectar palabras o frases.',
      args: [],
    );
  }

  /// `entre`
  String get between {
    return Intl.message(
      'entre',
      name: 'between',
      desc: 'Palabra que indica un intervalo de tiempo o espacio.',
      args: [],
    );
  }

  /// `Inicio`
  String get start {
    return Intl.message(
      'Inicio',
      name: 'start',
      desc: 'Campo o etiqueta que indica el comienzo de algo.',
      args: [],
    );
  }

  /// `Fin`
  String get end {
    return Intl.message(
      'Fin',
      name: 'end',
      desc: 'Campo o etiqueta que indica el final de algo.',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: 'Botón para confirmar una acción.',
      args: [],
    );
  }

  /// `Seleccionar Hora de Inicio`
  String get selectStartTime {
    return Intl.message(
      'Seleccionar Hora de Inicio',
      name: 'selectStartTime',
      desc: 'Campo o botón para seleccionar la hora de inicio de un evento.',
      args: [],
    );
  }

  /// `Seleccionar Hora de Fin`
  String get selectEndTime {
    return Intl.message(
      'Seleccionar Hora de Fin',
      name: 'selectEndTime',
      desc: 'Campo o botón para seleccionar la hora de fin de un evento.',
      args: [],
    );
  }

  /// `Por favor, selecciona un rango de tiempo`
  String get pleaseSelectTimeRange {
    return Intl.message(
      'Por favor, selecciona un rango de tiempo',
      name: 'pleaseSelectTimeRange',
      desc:
          'Mensaje de error que indica que se debe seleccionar un rango de tiempo.',
      args: [],
    );
  }

  /// `Información de Agenda`
  String get scheduleInfo {
    return Intl.message(
      'Información de Agenda',
      name: 'scheduleInfo',
      desc:
          'Etiqueta o campo para mostrar información sobre el calendario o la agenda.',
      args: [],
    );
  }

  /// `Procesando Cotización`
  String get processingQuotation {
    return Intl.message(
      'Procesando Cotización',
      name: 'processingQuotation',
      desc: 'Mensaje que indica que se está procesando una cotización.',
      args: [],
    );
  }

  /// `Por favor, espera mientras procesamos tu cotización`
  String get processingQuotationMessage {
    return Intl.message(
      'Por favor, espera mientras procesamos tu cotización',
      name: 'processingQuotationMessage',
      desc:
          'Mensaje que indica que el usuario debe esperar mientras se procesa su cotización.',
      args: [],
    );
  }

  /// `Tu respuesta ha sido enviada exitosamente`
  String get quotationResponseSuccessMessage {
    return Intl.message(
      'Tu respuesta ha sido enviada exitosamente',
      name: 'quotationResponseSuccessMessage',
      desc:
          'Mensaje que indica que la respuesta a la cotización fue enviada correctamente.',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: 'Mensaje o etiqueta para indicar que ocurrió un error.',
      args: [],
    );
  }

  /// `Rango Inválido`
  String get invalidRange {
    return Intl.message(
      'Rango Inválido',
      name: 'invalidRange',
      desc:
          'Mensaje de error que indica que el rango seleccionado no es válido.',
      args: [],
    );
  }

  /// `Conflicto de Horario`
  String get rejectReasonSchedulingConflict {
    return Intl.message(
      'Conflicto de Horario',
      name: 'rejectReasonSchedulingConflict',
      desc: 'Motivo de rechazo cuando hay un conflicto de programación.',
      args: [],
    );
  }

  /// `Desacuerdo Artístico`
  String get rejectReasonArtisticDisagreement {
    return Intl.message(
      'Desacuerdo Artístico',
      name: 'rejectReasonArtisticDisagreement',
      desc:
          'Motivo de rechazo cuando hay un desacuerdo sobre el aspecto artístico.',
      args: [],
    );
  }

  /// `Detalles Insuficientes`
  String get rejectReasonInsufficientDetails {
    return Intl.message(
      'Detalles Insuficientes',
      name: 'rejectReasonInsufficientDetails',
      desc:
          'Motivo de rechazo cuando la cotización no proporciona suficientes detalles.',
      args: [],
    );
  }

  /// `Fuera de Experiencia`
  String get rejectReasonBeyondExpertise {
    return Intl.message(
      'Fuera de Experiencia',
      name: 'rejectReasonBeyondExpertise',
      desc:
          'Motivo de rechazo cuando el trabajo está fuera del área de experiencia del artista.',
      args: [],
    );
  }

  /// `Otro`
  String get rejectReasonOther {
    return Intl.message(
      'Otro',
      name: 'rejectReasonOther',
      desc: 'Motivo de rechazo para cualquier otra razón no especificada.',
      args: [],
    );
  }

  /// `Pendiente`
  String get pending {
    return Intl.message(
      'Pendiente',
      name: 'pending',
      desc: 'Estado que indica que algo está en espera.',
      args: [],
    );
  }

  /// `Aceptado`
  String get responded {
    return Intl.message(
      'Aceptado',
      name: 'responded',
      desc: 'Estado que indica que algo ha sido aceptado.',
      args: [],
    );
  }

  /// `Aceptado`
  String get accepted {
    return Intl.message(
      'Aceptado',
      name: 'accepted',
      desc: 'Estado que indica que algo ha sido aceptado.',
      args: [],
    );
  }

  /// `Apelación`
  String get appeal {
    return Intl.message(
      'Apelación',
      name: 'appeal',
      desc: 'Campo o etiqueta para una apelación.',
      args: [],
    );
  }

  /// `Nueva Solicitud`
  String get newRequest {
    return Intl.message(
      'Nueva Solicitud',
      name: 'newRequest',
      desc: 'Etiqueta para una nueva solicitud.',
      args: [],
    );
  }

  /// `Esperando Cliente`
  String get awaitingCustomer {
    return Intl.message(
      'Esperando Cliente',
      name: 'awaitingCustomer',
      desc: 'Estado que indica que se está esperando al cliente.',
      args: [],
    );
  }

  /// `Esperando Respuesta`
  String get awaitingReply {
    return Intl.message(
      'Esperando Respuesta',
      name: 'awaitingReply',
      desc: 'Estado que indica que se está esperando una respuesta.',
      args: [],
    );
  }

  /// `Esperando Artista`
  String get awaitingArtist {
    return Intl.message(
      'Esperando Artista',
      name: 'awaitingArtist',
      desc: 'Estado que indica que se está esperando al artista.',
      args: [],
    );
  }

  /// `Programada`
  String get scheduled {
    return Intl.message(
      'Programada',
      name: 'scheduled',
      desc: 'Estado de una cita programada.',
      args: [],
    );
  }

  /// `Cotización Recibida`
  String get receivedQuotation {
    return Intl.message(
      'Cotización Recibida',
      name: 'receivedQuotation',
      desc: 'Estado que indica que se ha recibido una cotización.',
      args: [],
    );
  }

  /// `Nuevas Solicitudes`
  String get newRequests {
    return Intl.message(
      'Nuevas Solicitudes',
      name: 'newRequests',
      desc: 'Etiqueta para mostrar las nuevas solicitudes.',
      args: [],
    );
  }

  /// `Cotizaciones Recibidas`
  String get receivedQuotations {
    return Intl.message(
      'Cotizaciones Recibidas',
      name: 'receivedQuotations',
      desc: 'Etiqueta para mostrar las cotizaciones recibidas.',
      args: [],
    );
  }

  /// `No se encontraron cotizaciones`
  String get noQuotationsFound {
    return Intl.message(
      'No se encontraron cotizaciones',
      name: 'noQuotationsFound',
      desc: 'Mensaje que indica que no se encontraron cotizaciones.',
      args: [],
    );
  }

  /// `Mi Perfil`
  String get myProfile {
    return Intl.message(
      'Mi Perfil',
      name: 'myProfile',
      desc: 'Título o etiqueta para el perfil del usuario.',
      args: [],
    );
  }

  /// `Editar Perfil`
  String get editProfile {
    return Intl.message(
      'Editar Perfil',
      name: 'editProfile',
      desc: 'Botón para editar el perfil del usuario.',
      args: [],
    );
  }

  /// `Ajustes`
  String get settings {
    return Intl.message(
      'Ajustes',
      name: 'settings',
      desc: 'Título o etiqueta para los ajustes.',
      args: [],
    );
  }

  /// `Cerrar Sesión`
  String get logout {
    return Intl.message(
      'Cerrar Sesión',
      name: 'logout',
      desc: 'Botón para cerrar la sesión del usuario.',
      args: [],
    );
  }

  /// `Eliminar Cuenta`
  String get deleteAccount {
    return Intl.message(
      'Eliminar Cuenta',
      name: 'deleteAccount',
      desc: 'Botón para eliminar la cuenta del usuario.',
      args: [],
    );
  }

  /// `Confirmar Eliminación`
  String get confirmDeletion {
    return Intl.message(
      'Confirmar Eliminación',
      name: 'confirmDeletion',
      desc: 'Mensaje de confirmación para eliminar la cuenta.',
      args: [],
    );
  }

  /// `¿Estás seguro de que deseas eliminar tu cuenta? Esta acción no se puede deshacer.`
  String get confirmDeletionMessage {
    return Intl.message(
      '¿Estás seguro de que deseas eliminar tu cuenta? Esta acción no se puede deshacer.',
      name: 'confirmDeletionMessage',
      desc: 'Mensaje de confirmación para eliminar la cuenta.',
      args: [],
    );
  }

  /// `Agrega una descripción sobre ti.`
  String get addDescription {
    return Intl.message(
      'Agrega una descripción sobre ti.',
      name: 'addDescription',
      desc:
          'Mensaje que indica que se debe agregar una descripción sobre el usuario.',
      args: [],
    );
  }

  /// `Seguidores`
  String get followers {
    return Intl.message(
      'Seguidores',
      name: 'followers',
      desc: 'Campo o etiqueta para los seguidores.',
      args: [],
    );
  }

  /// `Seguidos`
  String get following {
    return Intl.message(
      'Seguidos',
      name: 'following',
      desc: 'Campo o etiqueta para los seguidos.',
      args: [],
    );
  }

  /// `Calificación`
  String get rating {
    return Intl.message(
      'Calificación',
      name: 'rating',
      desc: 'Campo o etiqueta para la calificación.',
      args: [],
    );
  }

  /// `Aún no hay reseñas`
  String get noReviewsYet {
    return Intl.message(
      'Aún no hay reseñas',
      name: 'noReviewsYet',
      desc: 'Mensaje que indica que aún no hay reseñas.',
      args: [],
    );
  }

  /// `Nombre completo`
  String get fullName {
    return Intl.message(
      'Nombre completo',
      name: 'fullName',
      desc: 'El nombre completo de una persona.',
      args: [],
    );
  }

  /// `Nombre de usuario`
  String get username {
    return Intl.message(
      'Nombre de usuario',
      name: 'username',
      desc: 'Un nombre único utilizado para identificar a un usuario.',
      args: [],
    );
  }

  /// `Correo electrónico`
  String get email {
    return Intl.message(
      'Correo electrónico',
      name: 'email',
      desc: 'Una dirección digital utilizada para la comunicación.',
      args: [],
    );
  }

  /// `Teléfono`
  String get phone {
    return Intl.message(
      'Teléfono',
      name: 'phone',
      desc: 'Un número de teléfono.',
      args: [],
    );
  }

  /// `Dirección`
  String get address {
    return Intl.message(
      'Dirección',
      name: 'address',
      desc: 'La ubicación donde alguien vive o trabaja.',
      args: [],
    );
  }

  /// `Ciudad`
  String get city {
    return Intl.message(
      'Ciudad',
      name: 'city',
      desc: 'Una gran ciudad o área urbana.',
      args: [],
    );
  }

  /// `Estado`
  String get state {
    return Intl.message(
      'Estado',
      name: 'state',
      desc: 'Una región o territorio de un país.',
      args: [],
    );
  }

  /// `Géneros`
  String get genres {
    return Intl.message(
      'Géneros',
      name: 'genres',
      desc: 'Categorías o tipos de arte.',
      args: [],
    );
  }

  /// `Etiquetas`
  String get tags {
    return Intl.message(
      'Etiquetas',
      name: 'tags',
      desc: 'Palabras clave o etiquetas utilizadas para categorizar algo.',
      args: [],
    );
  }

  /// `Foto del estudio`
  String get studioPhoto {
    return Intl.message(
      'Foto del estudio',
      name: 'studioPhoto',
      desc: 'Una imagen del estudio del artista.',
      args: [],
    );
  }

  /// `Actualizar foto del estudio`
  String get updateStudioPhoto {
    return Intl.message(
      'Actualizar foto del estudio',
      name: 'updateStudioPhoto',
      desc: 'Acción para cambiar la imagen del estudio del artista.',
      args: [],
    );
  }

  /// `Agregar foto del estudio`
  String get addStudioPhoto {
    return Intl.message(
      'Agregar foto del estudio',
      name: 'addStudioPhoto',
      desc: 'Acción para incluir una imagen del estudio del artista.',
      args: [],
    );
  }

  /// `Descripción Corta`
  String get shortDescription {
    return Intl.message(
      'Descripción Corta',
      name: 'shortDescription',
      desc: 'Una breve descripción de algo.',
      args: [],
    );
  }

  /// `Elegir Imagen`
  String get chooseImage {
    return Intl.message(
      'Elegir Imagen',
      name: 'chooseImage',
      desc: 'Botón para seleccionar una imagen.',
      args: [],
    );
  }

  /// `Imagen de Perfil`
  String get profileImage {
    return Intl.message(
      'Imagen de Perfil',
      name: 'profileImage',
      desc: 'Una imagen que representa a una persona.',
      args: [],
    );
  }

  /// `Notificaciones`
  String get notifications {
    return Intl.message(
      'Notificaciones',
      name: 'notifications',
      desc: 'Mensajes o alertas sobre actividades recientes.',
      args: [],
    );
  }

  /// `Servicios de ubicación`
  String get locationServices {
    return Intl.message(
      'Servicios de ubicación',
      name: 'locationServices',
      desc: 'Funciones que utilizan la ubicación del usuario.',
      args: [],
    );
  }

  /// `Idioma`
  String get language {
    return Intl.message(
      'Idioma',
      name: 'language',
      desc: 'El idioma preferido para la interfaz de usuario.',
      args: [],
    );
  }

  /// `Política de privacidad`
  String get privacyPolicy {
    return Intl.message(
      'Política de privacidad',
      name: 'privacyPolicy',
      desc: 'Reglas o directrices sobre el uso de información personal.',
      args: [],
    );
  }

  /// `Términos y condiciones`
  String get termsAndConditions {
    return Intl.message(
      'Términos y condiciones',
      name: 'termsAndConditions',
      desc: 'Las reglas o directrices para usar un servicio.',
      args: [],
    );
  }

  /// `Cerrar sesión`
  String get logOut {
    return Intl.message(
      'Cerrar sesión',
      name: 'logOut',
      desc: 'Acción para finalizar la sesión actual.',
      args: [],
    );
  }

  /// `Confirmar Cierre de Sesión`
  String get confirmLogout {
    return Intl.message(
      'Confirmar Cierre de Sesión',
      name: 'confirmLogout',
      desc: 'Mensaje de confirmación para cerrar la sesión.',
      args: [],
    );
  }

  /// `¿Estás seguro de que deseas cerrar sesión?`
  String get areYouSureLogout {
    return Intl.message(
      '¿Estás seguro de que deseas cerrar sesión?',
      name: 'areYouSureLogout',
      desc: 'Pregunta de confirmación para cerrar la sesión.',
      args: [],
    );
  }

  /// `No se ha seleccionado ninguna imagen`
  String get noImageSelected {
    return Intl.message(
      'No se ha seleccionado ninguna imagen',
      name: 'noImageSelected',
      desc: 'Mensaje que indica que no se ha seleccionado ninguna imagen.',
      args: [],
    );
  }

  /// `Su privacidad es importante para nosotros. No recopilamos información personal sin su consentimiento.`
  String get privacyPolicyContent {
    return Intl.message(
      'Su privacidad es importante para nosotros. No recopilamos información personal sin su consentimiento.',
      name: 'privacyPolicyContent',
      desc: 'Texto que describe la política de privacidad.',
      args: [],
    );
  }

  /// `Al usar esta aplicación, usted acepta los términos y condiciones aquí descritos.`
  String get termsAndConditionsContent {
    return Intl.message(
      'Al usar esta aplicación, usted acepta los términos y condiciones aquí descritos.',
      name: 'termsAndConditionsContent',
      desc: 'Texto que describe los términos y condiciones.',
      args: [],
    );
  }

  /// `Hecho`
  String get done {
    return Intl.message(
      'Hecho',
      name: 'done',
      desc: 'Botón para indicar que se ha completado una acción.',
      args: [],
    );
  }

  /// `Cambiar Imagen`
  String get changeImage {
    return Intl.message(
      'Cambiar Imagen',
      name: 'changeImage',
      desc: 'Botón para cambiar una imagen.',
      args: [],
    );
  }

  /// `Guardar Cambios`
  String get saveChanges {
    return Intl.message(
      'Guardar Cambios',
      name: 'saveChanges',
      desc: 'Botón para guardar los cambios realizados.',
      args: [],
    );
  }

  /// `Eliminar Imagen`
  String get removeImage {
    return Intl.message(
      'Eliminar Imagen',
      name: 'removeImage',
      desc: 'Botón para eliminar una imagen.',
      args: [],
    );
  }

  /// `No hay foto del estudio disponible`
  String get noStudioPhotoAvailable {
    return Intl.message(
      'No hay foto del estudio disponible',
      name: 'noStudioPhotoAvailable',
      desc: 'Mensaje que indica que no hay una foto del estudio disponible.',
      args: [],
    );
  }

  /// `Servicios`
  String get services {
    return Intl.message(
      'Servicios',
      name: 'services',
      desc: 'Los servicios que se ofrecen.',
      args: [],
    );
  }

  /// `No hay servicios disponibles`
  String get noServicesAvailable {
    return Intl.message(
      'No hay servicios disponibles',
      name: 'noServicesAvailable',
      desc: 'Mensaje que indica que no hay servicios disponibles.',
      args: [],
    );
  }

  /// `Información de Contacto`
  String get contactInformation {
    return Intl.message(
      'Información de Contacto',
      name: 'contactInformation',
      desc: 'Información para comunicarse con alguien.',
      args: [],
    );
  }

  /// `Guardar`
  String get save {
    return Intl.message(
      'Guardar',
      name: 'save',
      desc: 'Botón para guardar cambios.',
      args: [],
    );
  }

  /// `Aceptar Cotización`
  String get acceptQuotation {
    return Intl.message(
      'Aceptar Cotización',
      name: 'acceptQuotation',
      desc: 'Botón para aceptar una cotización.',
      args: [],
    );
  }

  /// `Rechazar Cotización`
  String get rejectQuotation {
    return Intl.message(
      'Rechazar Cotización',
      name: 'rejectQuotation',
      desc: 'Botón para rechazar una cotización.',
      args: [],
    );
  }

  /// `Apelar Cotización`
  String get appealQuotation {
    return Intl.message(
      'Apelar Cotización',
      name: 'appealQuotation',
      desc: 'Botón para apelar una cotización.',
      args: [],
    );
  }

  /// `Cancelar Cotización`
  String get cancelQuotation {
    return Intl.message(
      'Cancelar Cotización',
      name: 'cancelQuotation',
      desc: 'Botón para cancelar una cotización.',
      args: [],
    );
  }

  /// `Motivo de Apelación`
  String get appealReason {
    return Intl.message(
      'Motivo de Apelación',
      name: 'appealReason',
      desc: 'Campo para mostrar o ingresar el motivo de apelación.',
      args: [],
    );
  }

  /// `Necesito cambiar la fecha de la cita`
  String get appealReasonDateChange {
    return Intl.message(
      'Necesito cambiar la fecha de la cita',
      name: 'appealReasonDateChange',
      desc: 'Motivo de apelación para cambiar la fecha de la cita.',
      args: [],
    );
  }

  /// `El precio es demasiado alto`
  String get appealReasonPriceChange {
    return Intl.message(
      'El precio es demasiado alto',
      name: 'appealReasonPriceChange',
      desc: 'Motivo de apelación para un cambio en el precio.',
      args: [],
    );
  }

  /// `Necesito cambiar el diseño`
  String get appealReasonDesignChange {
    return Intl.message(
      'Necesito cambiar el diseño',
      name: 'appealReasonDesignChange',
      desc: 'Motivo de apelación para cambiar el diseño.',
      args: [],
    );
  }

  /// `Otro`
  String get appealReasonOther {
    return Intl.message(
      'Otro',
      name: 'appealReasonOther',
      desc: 'Motivo de apelación para cualquier otra razón no especificada.',
      args: [],
    );
  }

  /// `Demasiado Caro`
  String get rejectReasonTooExpensive {
    return Intl.message(
      'Demasiado Caro',
      name: 'rejectReasonTooExpensive',
      desc: 'Motivo de rechazo cuando el precio es demasiado alto.',
      args: [],
    );
  }

  /// `No es lo que quería`
  String get rejectReasonNotWhatIWanted {
    return Intl.message(
      'No es lo que quería',
      name: 'rejectReasonNotWhatIWanted',
      desc: 'Motivo de rechazo cuando el trabajo no es lo que se esperaba.',
      args: [],
    );
  }

  /// `Cambié de opinión`
  String get rejectReasonChangedMyMind {
    return Intl.message(
      'Cambié de opinión',
      name: 'rejectReasonChangedMyMind',
      desc: 'Motivo de rechazo cuando se cambia de opinión.',
      args: [],
    );
  }

  /// `Encontré otro artista`
  String get rejectReasonFoundAnotherArtist {
    return Intl.message(
      'Encontré otro artista',
      name: 'rejectReasonFoundAnotherArtist',
      desc: 'Motivo de rechazo cuando se encuentra otro artista.',
      args: [],
    );
  }

  /// `Nueva Solicitud`
  String get quotationStatusArtistPending {
    return Intl.message(
      'Nueva Solicitud',
      name: 'quotationStatusArtistPending',
      desc: 'Estado mostrado al artista cuando la cotización está pendiente',
      args: [],
    );
  }

  /// `Apelación Recibida`
  String get quotationStatusArtistAppealed {
    return Intl.message(
      'Apelación Recibida',
      name: 'quotationStatusArtistAppealed',
      desc: 'Estado mostrado al artista cuando la cotización está apelada',
      args: [],
    );
  }

  /// `Esperando Respuesta`
  String get quotationStatusArtistQuoted {
    return Intl.message(
      'Esperando Respuesta',
      name: 'quotationStatusArtistQuoted',
      desc: 'Estado mostrado al artista cuando la cotización está cotizada',
      args: [],
    );
  }

  /// `Agendado`
  String get quotationStatusArtistAccepted {
    return Intl.message(
      'Agendado',
      name: 'quotationStatusArtistAccepted',
      desc: 'Estado mostrado al artista cuando la cotización está aceptada',
      args: [],
    );
  }

  /// `Rechazado por Cliente`
  String get quotationStatusArtistRejected {
    return Intl.message(
      'Rechazado por Cliente',
      name: 'quotationStatusArtistRejected',
      desc: 'Estado mostrado al artista cuando la cotización está rechazada',
      args: [],
    );
  }

  /// `Cancelado por Ti`
  String get quotationStatusArtistCanceled {
    return Intl.message(
      'Cancelado por Ti',
      name: 'quotationStatusArtistCanceled',
      desc: 'Estado mostrado al artista cuando la cotización está cancelada',
      args: [],
    );
  }

  /// `Esperando Respuesta`
  String get quotationStatusCustomerPending {
    return Intl.message(
      'Esperando Respuesta',
      name: 'quotationStatusCustomerPending',
      desc: 'Estado mostrado al cliente cuando la cotización está pendiente',
      args: [],
    );
  }

  /// `Esperando Artista`
  String get quotationStatusCustomerAppealed {
    return Intl.message(
      'Esperando Artista',
      name: 'quotationStatusCustomerAppealed',
      desc: 'Estado mostrado al cliente cuando la cotización está apelada',
      args: [],
    );
  }

  /// `Cotización Recibida`
  String get quotationStatusCustomerQuoted {
    return Intl.message(
      'Cotización Recibida',
      name: 'quotationStatusCustomerQuoted',
      desc: 'Estado mostrado al cliente cuando la cotización está cotizada',
      args: [],
    );
  }

  /// `Agendado`
  String get quotationStatusCustomerAccepted {
    return Intl.message(
      'Agendado',
      name: 'quotationStatusCustomerAccepted',
      desc: 'Estado mostrado al cliente cuando la cotización está aceptada',
      args: [],
    );
  }

  /// `Rechazado`
  String get quotationStatusCustomerRejected {
    return Intl.message(
      'Rechazado',
      name: 'quotationStatusCustomerRejected',
      desc: 'Estado mostrado al cliente cuando la cotización está rechazada',
      args: [],
    );
  }

  /// `Cancelado`
  String get quotationStatusCustomerCanceled {
    return Intl.message(
      'Cancelado',
      name: 'quotationStatusCustomerCanceled',
      desc: 'Estado mostrado al cliente cuando la cotización está cancelada',
      args: [],
    );
  }

  /// `Estado Actual`
  String get currentStatus {
    return Intl.message(
      'Estado Actual',
      name: 'currentStatus',
      desc: 'Campo o etiqueta para mostrar el estado actual de algo.',
      args: [],
    );
  }

  /// `Historial de Cotizaciones`
  String get quotationHistory {
    return Intl.message(
      'Historial de Cotizaciones',
      name: 'quotationHistory',
      desc: 'Campo o etiqueta para mostrar el historial de cotizaciones.',
      args: [],
    );
  }

  /// `cambió el estado de`
  String get changedStatusFrom {
    return Intl.message(
      'cambió el estado de',
      name: 'changedStatusFrom',
      desc: 'Mensaje que indica que el estado de algo ha cambiado.',
      args: [],
    );
  }

  /// `Cotizó la solicitud`
  String get quotedTheRequest {
    return Intl.message(
      'Cotizó la solicitud',
      name: 'quotedTheRequest',
      desc: 'Mensaje que indica que se ha cotizado una solicitud.',
      args: [],
    );
  }

  /// `Apeló la cotización`
  String get appealedTheQuotation {
    return Intl.message(
      'Apeló la cotización',
      name: 'appealedTheQuotation',
      desc: 'Mensaje que indica que se ha apelado una cotización.',
      args: [],
    );
  }

  /// `Pendiente`
  String get statusPending {
    return Intl.message(
      'Pendiente',
      name: 'statusPending',
      desc: 'Estado que indica que algo está en espera.',
      args: [],
    );
  }

  /// `Cotizado`
  String get statusQuoted {
    return Intl.message(
      'Cotizado',
      name: 'statusQuoted',
      desc: 'Estado que indica que algo ha sido cotizado.',
      args: [],
    );
  }

  /// `Aceptado`
  String get statusAccepted {
    return Intl.message(
      'Aceptado',
      name: 'statusAccepted',
      desc: 'Estado que indica que algo ha sido aceptado.',
      args: [],
    );
  }

  /// `Rechazado`
  String get statusRejected {
    return Intl.message(
      'Rechazado',
      name: 'statusRejected',
      desc: 'Estado que indica que algo ha sido rechazado.',
      args: [],
    );
  }

  /// `Cancelado`
  String get statusCanceled {
    return Intl.message(
      'Cancelado',
      name: 'statusCanceled',
      desc: 'Estado que indica que algo ha sido cancelado.',
      args: [],
    );
  }

  /// `Apelado`
  String get statusAppealed {
    return Intl.message(
      'Apelado',
      name: 'statusAppealed',
      desc: 'Estado que indica que algo ha sido apelado.',
      args: [],
    );
  }

  /// `Artista`
  String get artist {
    return Intl.message(
      'Artista',
      name: 'artist',
      desc: 'Una persona que crea arte.',
      args: [],
    );
  }

  /// `Cliente`
  String get customer {
    return Intl.message(
      'Cliente',
      name: 'customer',
      desc: 'Una persona que compra bienes o servicios.',
      args: [],
    );
  }

  /// `Sistema`
  String get system {
    return Intl.message(
      'Sistema',
      name: 'system',
      desc: 'Un conjunto de cosas que trabajan juntas como un todo.',
      args: [],
    );
  }

  /// `Ver Detalles`
  String get viewDetails {
    return Intl.message(
      'Ver Detalles',
      name: 'viewDetails',
      desc: 'Botón para ver más detalles.',
      args: [],
    );
  }

  /// `Expandir`
  String get expand {
    return Intl.message(
      'Expandir',
      name: 'expand',
      desc: 'Botón para expandir o mostrar más información.',
      args: [],
    );
  }

  /// `Colapsar`
  String get collapse {
    return Intl.message(
      'Colapsar',
      name: 'collapse',
      desc: 'Botón para colapsar o mostrar menos información.',
      args: [],
    );
  }

  /// `{hoursv2} horas y {minutesv2} minutos`
  String hoursAndMinutes(int hoursv2, int minutesv2) {
    return Intl.message(
      '$hoursv2 horas y $minutesv2 minutos',
      name: 'hoursAndMinutes',
      desc: 'Texto que muestra duración con horas y minutos',
      args: [hoursv2, minutesv2],
    );
  }

  /// `{hoursv2} horas`
  String hoursv2(int hoursv2) {
    return Intl.message(
      '$hoursv2 horas',
      name: 'hoursv2',
      desc: 'Texto que muestra duración solo en horas',
      args: [hoursv2],
    );
  }

  /// `{minutesv2} minutos`
  String minutesv2(int minutesv2) {
    return Intl.message(
      '$minutesv2 minutos',
      name: 'minutesv2',
      desc: 'Texto que muestra duración solo en minutos',
      args: [minutesv2],
    );
  }

  /// `Motivo de Cancelación`
  String get cancellationReason {
    return Intl.message(
      'Motivo de Cancelación',
      name: 'cancellationReason',
      desc: 'Etiqueta para mostrar el motivo de cancelación',
      args: [],
    );
  }

  /// `Cambié de opinión`
  String get cancelReasonChangeOfMind {
    return Intl.message(
      'Cambié de opinión',
      name: 'cancelReasonChangeOfMind',
      desc: 'Motivo de cancelación cuando el cliente cambia de opinión',
      args: [],
    );
  }

  /// `Encontré otro artista`
  String get cancelReasonFoundAnotherArtist {
    return Intl.message(
      'Encontré otro artista',
      name: 'cancelReasonFoundAnotherArtist',
      desc: 'Motivo de cancelación cuando el cliente encontró otro artista',
      args: [],
    );
  }

  /// `Motivos financieros`
  String get cancelReasonFinancialReasons {
    return Intl.message(
      'Motivos financieros',
      name: 'cancelReasonFinancialReasons',
      desc: 'Motivo de cancelación por problemas financieros',
      args: [],
    );
  }

  /// `Motivos personales`
  String get cancelReasonPersonalReasons {
    return Intl.message(
      'Motivos personales',
      name: 'cancelReasonPersonalReasons',
      desc: 'Motivo de cancelación por problemas personales',
      args: [],
    );
  }

  /// `Otro`
  String get cancelReasonOther {
    return Intl.message(
      'Otro',
      name: 'cancelReasonOther',
      desc: 'Motivo de cancelación cuando no encaja en otras categorías',
      args: [],
    );
  }

  /// `No asistió a la cita`
  String get cancelReasonNotAttended {
    return Intl.message(
      'No asistió a la cita',
      name: 'cancelReasonNotAttended',
      desc: 'Motivo de cancelación del sistema cuando se perdió la cita',
      args: [],
    );
  }

  /// `Tiempo de espera agotado`
  String get cancelReasonSystemTimeout {
    return Intl.message(
      'Tiempo de espera agotado',
      name: 'cancelReasonSystemTimeout',
      desc:
          'Motivo de cancelación del sistema cuando se agotó el tiempo de espera',
      args: [],
    );
  }

  /// `No hay imágenes disponibles`
  String get noImagesAvailable {
    return Intl.message(
      'No hay imágenes disponibles',
      name: 'noImagesAvailable',
      desc: 'Mensaje que indica que no hay imágenes disponibles.',
      args: [],
    );
  }

  /// `aceptó la cotización`
  String get acceptedTheQuotation {
    return Intl.message(
      'aceptó la cotización',
      name: 'acceptedTheQuotation',
      desc: 'Action text when a quotation is accepted',
      args: [],
    );
  }

  /// `rechazó la cotización`
  String get rejectedTheQuotation {
    return Intl.message(
      'rechazó la cotización',
      name: 'rejectedTheQuotation',
      desc: 'Action text when a quotation is rejected',
      args: [],
    );
  }

  /// `canceló la cotización`
  String get canceledTheQuotation {
    return Intl.message(
      'canceló la cotización',
      name: 'canceledTheQuotation',
      desc: 'Action text when a quotation is canceled',
      args: [],
    );
  }

  /// `La fecha de la cita cambió de`
  String get appointmentDateChangedFrom {
    return Intl.message(
      'La fecha de la cita cambió de',
      name: 'appointmentDateChangedFrom',
      desc:
          'Text shown when appointment date is changed, followed by the old and new dates',
      args: [],
    );
  }

  /// `El costo estimado cambió de`
  String get estimatedCostChangedFrom {
    return Intl.message(
      'El costo estimado cambió de',
      name: 'estimatedCostChangedFrom',
      desc:
          'Text shown when estimated cost is changed, followed by the old and new amounts',
      args: [],
    );
  }

  /// `Miembro desde`
  String get memberSince {
    return Intl.message(
      'Miembro desde',
      name: 'memberSince',
      desc: 'Text shown when a user joined the platform',
      args: [],
    );
  }

  /// `No disponible`
  String get notAvailable {
    return Intl.message(
      'No disponible',
      name: 'notAvailable',
      desc: 'Text shown when something is not available',
      args: [],
    );
  }

  /// `Ubicación`
  String get location {
    return Intl.message(
      'Ubicación',
      name: 'location',
      desc: 'Text shown to indicate a location',
      args: [],
    );
  }

  /// `Restablecer`
  String get reset {
    return Intl.message(
      'Restablecer',
      name: 'reset',
      desc: 'Action to reset something.',
      args: [],
    );
  }

  /// `Rango`
  String get range {
    return Intl.message(
      'Rango',
      name: 'range',
      desc: 'The distance in kilometers to search for artists.',
      args: [],
    );
  }

  /// `km`
  String get km {
    return Intl.message(
      'km',
      name: 'km',
      desc: 'The unit of distance in kilometers.',
      args: [],
    );
  }

  /// `Restablecer Rango`
  String get resetRange {
    return Intl.message(
      'Restablecer Rango',
      name: 'resetRange',
      desc: 'Action to reset the range of search.',
      args: [],
    );
  }

  /// `Radio de búsqueda`
  String get searchRadius {
    return Intl.message(
      'Radio de búsqueda',
      name: 'searchRadius',
      desc: 'The radius in kilometers to search for artists.',
      args: [],
    );
  }

  /// `{artistsFound} artistas encontrados en {range}km`
  String artistsFound(int artistsFound, double range) {
    return Intl.message(
      '$artistsFound artistas encontrados en ${range}km',
      name: 'artistsFound',
      desc: 'Text showing the number of artists found in a given range',
      args: [artistsFound, range],
    );
  }

  /// `Tiempo`
  String get time {
    return Intl.message(
      'Tiempo',
      name: 'time',
      desc: 'The time of an event or appointment.',
      args: [],
    );
  }

  /// `Número de Cotización`
  String get quotationNumber {
    return Intl.message(
      'Número de Cotización',
      name: 'quotationNumber',
      desc: 'The number of a quotation.',
      args: [],
    );
  }

  /// `Fecha`
  String get date {
    return Intl.message(
      'Fecha',
      name: 'date',
      desc: 'The date of an event or appointment.',
      args: [],
    );
  }

  /// `Configuración de la aplicación`
  String get applicationSettings {
    return Intl.message(
      'Configuración de la aplicación',
      name: 'applicationSettings',
      desc: 'Settings for the application.',
      args: [],
    );
  }

  /// `Habilitar o deshabilitar notificaciones.`
  String get notificationsDescription {
    return Intl.message(
      'Habilitar o deshabilitar notificaciones.',
      name: 'notificationsDescription',
      desc: 'Descripción para las notificaciones.',
      args: [],
    );
  }

  /// `Habilitar o deshabilitar servicios de ubicación.`
  String get locationServicesDescription {
    return Intl.message(
      'Habilitar o deshabilitar servicios de ubicación.',
      name: 'locationServicesDescription',
      desc: 'Descripción para los servicios de ubicación.',
      args: [],
    );
  }

  /// `Permiso de notificaciones requerido`
  String get notificationsPermissionRequired {
    return Intl.message(
      'Permiso de notificaciones requerido',
      name: 'notificationsPermissionRequired',
      desc: 'Mensaje mostrado cuando se requiere permiso de notificaciones.',
      args: [],
    );
  }

  /// `Permiso de ubicación requerido`
  String get locationPermissionRequired {
    return Intl.message(
      'Permiso de ubicación requerido',
      name: 'locationPermissionRequired',
      desc: 'Mensaje mostrado cuando se requiere permiso de ubicación.',
      args: [],
    );
  }

  /// `Configuración de la cuenta`
  String get accountSettings {
    return Intl.message(
      'Configuración de la cuenta',
      name: 'accountSettings',
      desc: 'Settings for the account.',
      args: [],
    );
  }

  /// `Cambiar contraseña`
  String get changePassword {
    return Intl.message(
      'Cambiar contraseña',
      name: 'changePassword',
      desc: 'Action to change the password.',
      args: [],
    );
  }

  /// `Contraseña actual`
  String get currentPassword {
    return Intl.message(
      'Contraseña actual',
      name: 'currentPassword',
      desc: 'Label for the current password field.',
      args: [],
    );
  }

  /// `Nueva contraseña`
  String get newPassword {
    return Intl.message(
      'Nueva contraseña',
      name: 'newPassword',
      desc: 'Label for the new password field.',
      args: [],
    );
  }

  /// `Confirmar contraseña`
  String get confirmPassword {
    return Intl.message(
      'Confirmar contraseña',
      name: 'confirmPassword',
      desc: 'Label for the confirm password field.',
      args: [],
    );
  }

  /// `Las contraseñas no coinciden`
  String get passwordsDontMatch {
    return Intl.message(
      'Las contraseñas no coinciden',
      name: 'passwordsDontMatch',
      desc: 'Message displayed when passwords don\'t match.',
      args: [],
    );
  }

  /// `La contraseña es demasiado corta`
  String get passwordTooShort {
    return Intl.message(
      'La contraseña es demasiado corta',
      name: 'passwordTooShort',
      desc: 'Message displayed when password is too short.',
      args: [],
    );
  }

  /// `Requerido`
  String get required {
    return Intl.message(
      'Requerido',
      name: 'required',
      desc: 'Message displayed when a field is required.',
      args: [],
    );
  }

  /// `Confirmar nueva contraseña`
  String get confirmNewPassword {
    return Intl.message(
      'Confirmar nueva contraseña',
      name: 'confirmNewPassword',
      desc: 'Label for the confirm new password field.',
      args: [],
    );
  }

  /// `Contraseña cambiada exitosamente`
  String get passwordChangedSuccessfully {
    return Intl.message(
      'Contraseña cambiada exitosamente',
      name: 'passwordChangedSuccessfully',
      desc: 'Message displayed when password is changed successfully.',
      args: [],
    );
  }

  /// `Cambiar`
  String get change {
    return Intl.message(
      'Cambiar',
      name: 'change',
      desc: 'Action to change something.',
      args: [],
    );
  }

  /// `Legal`
  String get legal {
    return Intl.message(
      'Legal',
      name: 'legal',
      desc: 'Settings related to legal matters.',
      args: [],
    );
  }

  /// `Permiso requerido`
  String get permissionRequired {
    return Intl.message(
      'Permiso requerido',
      name: 'permissionRequired',
      desc: 'Message displayed when a permission is required.',
      args: [],
    );
  }

  /// `Abrir Configuraciones`
  String get openSettings {
    return Intl.message(
      'Abrir Configuraciones',
      name: 'openSettings',
      desc: 'Action to open the settings.',
      args: [],
    );
  }

  /// `¿Estás seguro de que deseas eliminar tu cuenta? Esta acción es irreversible y eliminará todos los datos asociados a tu cuenta.`
  String get deleteAccountWarning {
    return Intl.message(
      '¿Estás seguro de que deseas eliminar tu cuenta? Esta acción es irreversible y eliminará todos los datos asociados a tu cuenta.',
      name: 'deleteAccountWarning',
      desc: 'Warning message displayed when deleting an account.',
      args: [],
    );
  }

  /// `No hay notificaciones`
  String get noNotificationsTitle {
    return Intl.message(
      'No hay notificaciones',
      name: 'noNotificationsTitle',
      desc: 'Title displayed when there are no notifications.',
      args: [],
    );
  }

  /// `No tienes ninguna notificación todavía.`
  String get noNotificationsMessage {
    return Intl.message(
      'No tienes ninguna notificación todavía.',
      name: 'noNotificationsMessage',
      desc: 'Message displayed when there are no notifications.',
      args: [],
    );
  }

  /// `Por favor, contacta al artista para más detalles.`
  String get contactArtist {
    return Intl.message(
      'Por favor, contacta al artista para más detalles.',
      name: 'contactArtist',
      desc: 'Mensaje que invita al usuario a contactar al artista.',
      args: [],
    );
  }

  /// `Por favor, proporciona los detalles para cambiar tu cita.`
  String get changeAppointmentInstruction {
    return Intl.message(
      'Por favor, proporciona los detalles para cambiar tu cita.',
      name: 'changeAppointmentInstruction',
      desc: 'Instrucción para cambiar una cita.',
      args: [],
    );
  }

  /// `Cambiar Cita`
  String get changeAppointment {
    return Intl.message(
      'Cambiar Cita',
      name: 'changeAppointment',
      desc: 'Etiqueta para la acción de cambiar la cita.',
      args: [],
    );
  }

  /// `Por favor, proporciona una razón para la cancelación.`
  String get pleaseProvideReason {
    return Intl.message(
      'Por favor, proporciona una razón para la cancelación.',
      name: 'pleaseProvideReason',
      desc:
          'Mensaje que solicita al usuario que proporcione una razón para la cancelación.',
      args: [],
    );
  }

  /// `¿Estás seguro de que deseas cancelar la cita?`
  String get cancelAppointmentConfirmation {
    return Intl.message(
      '¿Estás seguro de que deseas cancelar la cita?',
      name: 'cancelAppointmentConfirmation',
      desc: 'Mensaje de confirmación que se muestra al cancelar una cita.',
      args: [],
    );
  }

  /// `Cancelar Cita`
  String get cancelAppointment {
    return Intl.message(
      'Cancelar Cita',
      name: 'cancelAppointment',
      desc: 'Etiqueta para la acción de cancelar la cita.',
      args: [],
    );
  }

  /// `Cotización Relacionada`
  String get relatedQuotation {
    return Intl.message(
      'Cotización Relacionada',
      name: 'relatedQuotation',
      desc: 'Etiqueta para la sección de cotización relacionada.',
      args: [],
    );
  }

  /// `Detalles de la Cita`
  String get appointmentDetails {
    return Intl.message(
      'Detalles de la Cita',
      name: 'appointmentDetails',
      desc: 'Etiqueta para la sección de detalles de la cita.',
      args: [],
    );
  }

  /// `Acción exitosa`
  String get actionSuccessful {
    return Intl.message(
      'Acción exitosa',
      name: 'actionSuccessful',
      desc: 'Mensaje mostrado cuando una acción es exitosa.',
      args: [],
    );
  }

  /// `Actualizar`
  String get update {
    return Intl.message(
      'Actualizar',
      name: 'update',
      desc: 'Etiqueta para la acción de actualizar.',
      args: [],
    );
  }

  /// `Hora de Inicio`
  String get startTime {
    return Intl.message(
      'Hora de Inicio',
      name: 'startTime',
      desc: 'Etiqueta para el campo de hora de inicio.',
      args: [],
    );
  }

  /// `Rango Personalizado`
  String get customRange {
    return Intl.message(
      'Rango Personalizado',
      name: 'customRange',
      desc: 'Etiqueta para la selección de rango de fechas personalizado.',
      args: [],
    );
  }

  /// `Hora de Fin`
  String get endTime {
    return Intl.message(
      'Hora de Fin',
      name: 'endTime',
      desc: 'Etiqueta para el campo de hora de fin.',
      args: [],
    );
  }

  /// `La hora de fin debe ser después de la hora de inicio.`
  String get errorMsgEndTimeMustBeAfterStart {
    return Intl.message(
      'La hora de fin debe ser después de la hora de inicio.',
      name: 'errorMsgEndTimeMustBeAfterStart',
      desc:
          'Mensaje de error mostrado cuando la hora de fin no es después de la hora de inicio.',
      args: [],
    );
  }

  /// `Formato de hora inválido. Por favor, usa HH:mm.`
  String get errorMsgInvalidTimeFormat {
    return Intl.message(
      'Formato de hora inválido. Por favor, usa HH:mm.',
      name: 'errorMsgInvalidTimeFormat',
      desc: 'Mensaje de error mostrado cuando el formato de hora es inválido.',
      args: [],
    );
  }

  /// `Evento actualizado con éxito.`
  String get eventUpdatedSuccessfully {
    return Intl.message(
      'Evento actualizado con éxito.',
      name: 'eventUpdatedSuccessfully',
      desc: 'Mensaje mostrado cuando un evento se actualiza con éxito.',
      args: [],
    );
  }

  /// `Evento creado con éxito.`
  String get eventCreatedSuccessfully {
    return Intl.message(
      'Evento creado con éxito.',
      name: 'eventCreatedSuccessfully',
      desc: 'Mensaje mostrado cuando un nuevo evento se crea con éxito.',
      args: [],
    );
  }

  /// `La creación del evento falló. Por favor, inténtalo de nuevo.`
  String get errorMsgEventCreationFailed {
    return Intl.message(
      'La creación del evento falló. Por favor, inténtalo de nuevo.',
      name: 'errorMsgEventCreationFailed',
      desc: 'Mensaje de error mostrado cuando la creación del evento falla.',
      args: [],
    );
  }

  /// `Administrar Ubicaciones`
  String get manageLocations {
    return Intl.message(
      'Administrar Ubicaciones',
      name: 'manageLocations',
      desc: 'Título para la página de administración de ubicaciones.',
      args: [],
    );
  }

  /// `Agregar Ubicación`
  String get addLocation {
    return Intl.message(
      'Agregar Ubicación',
      name: 'addLocation',
      desc: 'Etiqueta para la acción de agregar ubicación.',
      args: [],
    );
  }

  /// `Editar Ubicación`
  String get editLocation {
    return Intl.message(
      'Editar Ubicación',
      name: 'editLocation',
      desc: 'Etiqueta para la acción de editar ubicación.',
      args: [],
    );
  }

  /// `Eliminar Ubicación`
  String get deleteLocation {
    return Intl.message(
      'Eliminar Ubicación',
      name: 'deleteLocation',
      desc: 'Etiqueta para la acción de eliminar ubicación.',
      args: [],
    );
  }

  /// `¿Estás seguro que deseas eliminar`
  String get areYouSureDelete {
    return Intl.message(
      '¿Estás seguro que deseas eliminar',
      name: 'areYouSureDelete',
      desc: 'Mensaje de confirmación para acciones de eliminación.',
      args: [],
    );
  }

  /// `No hay ubicaciones disponibles`
  String get noLocationsAvailable {
    return Intl.message(
      'No hay ubicaciones disponibles',
      name: 'noLocationsAvailable',
      desc: 'Mensaje mostrado cuando no hay ubicaciones disponibles.',
      args: [],
    );
  }

  /// `Nombre de la Ubicación`
  String get locationName {
    return Intl.message(
      'Nombre de la Ubicación',
      name: 'locationName',
      desc: 'Etiqueta para el nombre de la ubicación.',
      args: [],
    );
  }

  /// `Ingresa el nombre de la ubicación`
  String get enterLocationName {
    return Intl.message(
      'Ingresa el nombre de la ubicación',
      name: 'enterLocationName',
      desc: 'Texto de ayuda para ingresar el nombre de la ubicación.',
      args: [],
    );
  }

  /// `Ingresa la dirección`
  String get enterAddress {
    return Intl.message(
      'Ingresa la dirección',
      name: 'enterAddress',
      desc: 'Texto de ayuda para ingresar la dirección.',
      args: [],
    );
  }

  /// `Detalles de la Dirección`
  String get addressDetails {
    return Intl.message(
      'Detalles de la Dirección',
      name: 'addressDetails',
      desc: 'Etiqueta para la sección de detalles de la dirección.',
      args: [],
    );
  }

  /// `No se puede eliminar la última ubicación. Los artistas deben tener al menos una ubicación.`
  String get cannotDeleteLastLocation {
    return Intl.message(
      'No se puede eliminar la última ubicación. Los artistas deben tener al menos una ubicación.',
      name: 'cannotDeleteLastLocation',
      desc:
          'Mensaje de error mostrado al intentar eliminar la última ubicación.',
      args: [],
    );
  }

  /// `Por favor selecciona una imagen`
  String get pleaseSelectAnImage {
    return Intl.message(
      'Por favor selecciona una imagen',
      name: 'pleaseSelectAnImage',
      desc: 'Mensaje mostrado cuando no se selecciona una imagen',
      args: [],
    );
  }

  /// `Agregar Plantilla`
  String get addStencil {
    return Intl.message(
      'Agregar Plantilla',
      name: 'addStencil',
      desc: 'Acción para agregar una nueva plantilla',
      args: [],
    );
  }

  /// `Plantilla creada exitosamente`
  String get stencilCreatedSuccessfully {
    return Intl.message(
      'Plantilla creada exitosamente',
      name: 'stencilCreatedSuccessfully',
      desc: 'Mensaje mostrado cuando se crea una plantilla exitosamente',
      args: [],
    );
  }

  /// `Toca para seleccionar una imagen`
  String get tapToSelectImage {
    return Intl.message(
      'Toca para seleccionar una imagen',
      name: 'tapToSelectImage',
      desc: 'Instrucción para tocar y seleccionar una imagen',
      args: [],
    );
  }

  /// `Título`
  String get title {
    return Intl.message(
      'Título',
      name: 'title',
      desc: 'Etiqueta para el campo de título',
      args: [],
    );
  }

  /// `Por favor ingresa un título`
  String get pleaseEnterATitle {
    return Intl.message(
      'Por favor ingresa un título',
      name: 'pleaseEnterATitle',
      desc: 'Mensaje de validación cuando el título está vacío',
      args: [],
    );
  }

  /// `Fuente`
  String get source {
    return Intl.message(
      'Fuente',
      name: 'source',
      desc: 'Etiqueta de fuente',
      args: [],
    );
  }

  /// `Plantilla Destacada`
  String get featuredStencil {
    return Intl.message(
      'Plantilla Destacada',
      name: 'featuredStencil',
      desc: 'Etiqueta para la opción de plantilla destacada',
      args: [],
    );
  }

  /// `La plantilla será destacada en el perfil`
  String get stencilWillBeHighlightedInProfile {
    return Intl.message(
      'La plantilla será destacada en el perfil',
      name: 'stencilWillBeHighlightedInProfile',
      desc: 'Descripción para la opción de plantilla destacada',
      args: [],
    );
  }

  /// `Ocultar Plantilla`
  String get hideStencil {
    return Intl.message(
      'Ocultar Plantilla',
      name: 'hideStencil',
      desc: 'Etiqueta para la opción de ocultar plantilla',
      args: [],
    );
  }

  /// `La plantilla será ocultada del público`
  String get stencilWillBeHiddenFromPublicView {
    return Intl.message(
      'La plantilla será ocultada del público',
      name: 'stencilWillBeHiddenFromPublicView',
      desc: 'Descripción para la opción de ocultar plantilla',
      args: [],
    );
  }

  /// `Guardar Plantilla`
  String get saveStencil {
    return Intl.message(
      'Guardar Plantilla',
      name: 'saveStencil',
      desc: 'Botón para guardar plantilla',
      args: [],
    );
  }

  /// `El título no puede estar vacío`
  String get titleCannotBeEmpty {
    return Intl.message(
      'El título no puede estar vacío',
      name: 'titleCannotBeEmpty',
      desc: 'Mensaje de error cuando el título está vacío',
      args: [],
    );
  }

  /// `Eliminar Plantilla`
  String get deleteStencil {
    return Intl.message(
      'Eliminar Plantilla',
      name: 'deleteStencil',
      desc: 'Acción para eliminar una plantilla',
      args: [],
    );
  }

  /// `¿Estás seguro que deseas eliminar esta plantilla?`
  String get areYouSureYouWantToDeleteThisStencil {
    return Intl.message(
      '¿Estás seguro que deseas eliminar esta plantilla?',
      name: 'areYouSureYouWantToDeleteThisStencil',
      desc: 'Mensaje de confirmación para eliminar una plantilla',
      args: [],
    );
  }

  /// `Editar Plantilla`
  String get editStencil {
    return Intl.message(
      'Editar Plantilla',
      name: 'editStencil',
      desc: 'Acción para editar una plantilla',
      args: [],
    );
  }

  /// `Detalles de la Plantilla`
  String get stencilDetails {
    return Intl.message(
      'Detalles de la Plantilla',
      name: 'stencilDetails',
      desc: 'Título para la pantalla de detalles de la plantilla',
      args: [],
    );
  }

  /// `Plantilla actualizada exitosamente`
  String get stencilUpdatedSuccessfully {
    return Intl.message(
      'Plantilla actualizada exitosamente',
      name: 'stencilUpdatedSuccessfully',
      desc: 'Mensaje mostrado cuando una plantilla se actualiza exitosamente',
      args: [],
    );
  }

  /// `Plantilla eliminada exitosamente`
  String get stencilDeletedSuccessfully {
    return Intl.message(
      'Plantilla eliminada exitosamente',
      name: 'stencilDeletedSuccessfully',
      desc: 'Mensaje mostrado cuando una plantilla se elimina exitosamente',
      args: [],
    );
  }

  /// `Toca para cambiar la imagen`
  String get tapToChangeImage {
    return Intl.message(
      'Toca para cambiar la imagen',
      name: 'tapToChangeImage',
      desc: 'Instrucción para tocar y cambiar una imagen',
      args: [],
    );
  }

  /// `Vistas`
  String get views {
    return Intl.message(
      'Vistas',
      name: 'views',
      desc: 'Etiqueta para contador de vistas',
      args: [],
    );
  }

  /// `Me gusta`
  String get likes {
    return Intl.message(
      'Me gusta',
      name: 'likes',
      desc: 'Etiqueta para contador de me gusta',
      args: [],
    );
  }

  /// `Creada`
  String get created {
    return Intl.message(
      'Creada',
      name: 'created',
      desc: 'Etiqueta para la fecha de creación',
      args: [],
    );
  }

  /// `Última Actualización`
  String get lastUpdated {
    return Intl.message(
      'Última Actualización',
      name: 'lastUpdated',
      desc: 'Etiqueta para la fecha de última actualización',
      args: [],
    );
  }

  /// `Estado`
  String get status {
    return Intl.message(
      'Estado',
      name: 'status',
      desc: 'Etiqueta para el estado',
      args: [],
    );
  }

  /// `Oculta`
  String get hidden {
    return Intl.message(
      'Oculta',
      name: 'hidden',
      desc: 'Etiqueta para estado oculto',
      args: [],
    );
  }

  /// `Visible`
  String get visible {
    return Intl.message(
      'Visible',
      name: 'visible',
      desc: 'Etiqueta para estado visible',
      args: [],
    );
  }

  /// `Destacada`
  String get featured {
    return Intl.message(
      'Destacada',
      name: 'featured',
      desc: 'Etiqueta para estado destacado',
      args: [],
    );
  }

  /// `Sí`
  String get yes {
    return Intl.message(
      'Sí',
      name: 'yes',
      desc: 'Respuesta afirmativa',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: 'Respuesta negativa',
      args: [],
    );
  }

  /// `Galería de Plantillas`
  String get stencilGallery {
    return Intl.message(
      'Galería de Plantillas',
      name: 'stencilGallery',
      desc: 'Título para la pantalla de galería de plantillas',
      args: [],
    );
  }

  /// `Mostrando todas las plantillas`
  String get showingAllStencils {
    return Intl.message(
      'Mostrando todas las plantillas',
      name: 'showingAllStencils',
      desc:
          'Mensaje cuando se muestran todas las plantillas incluidas las ocultas',
      args: [],
    );
  }

  /// `Ocultando plantillas ocultas`
  String get hidingHiddenStencils {
    return Intl.message(
      'Ocultando plantillas ocultas',
      name: 'hidingHiddenStencils',
      desc: 'Mensaje cuando no se muestran plantillas ocultas',
      args: [],
    );
  }

  /// `Plantillas Destacadas`
  String get featuredStencils {
    return Intl.message(
      'Plantillas Destacadas',
      name: 'featuredStencils',
      desc: 'Título para la sección de plantillas destacadas',
      args: [],
    );
  }

  /// `Todas las Plantillas`
  String get allStencils {
    return Intl.message(
      'Todas las Plantillas',
      name: 'allStencils',
      desc: 'Título para la sección de todas las plantillas',
      args: [],
    );
  }

  /// `Otras Plantillas`
  String get allOtherStencils {
    return Intl.message(
      'Otras Plantillas',
      name: 'allOtherStencils',
      desc: 'Título para la sección de plantillas no destacadas',
      args: [],
    );
  }

  /// `Quitar destacado`
  String get unfeature {
    return Intl.message(
      'Quitar destacado',
      name: 'unfeature',
      desc: 'Acción para quitar estado destacado',
      args: [],
    );
  }

  /// `Destacar`
  String get feature {
    return Intl.message(
      'Destacar',
      name: 'feature',
      desc: 'Acción para agregar estado destacado',
      args: [],
    );
  }

  /// `Mostrar`
  String get show {
    return Intl.message(
      'Mostrar',
      name: 'show',
      desc: 'Acción para hacer visible',
      args: [],
    );
  }

  /// `Ocultar`
  String get hide {
    return Intl.message(
      'Ocultar',
      name: 'hide',
      desc: 'Acción para ocultar',
      args: [],
    );
  }

  /// `Aún No Hay Plantillas`
  String get noStencilsYet {
    return Intl.message(
      'Aún No Hay Plantillas',
      name: 'noStencilsYet',
      desc: 'Mensaje cuando no existen plantillas',
      args: [],
    );
  }

  /// `Agrega tu primera plantilla para comenzar`
  String get addYourFirstStencil {
    return Intl.message(
      'Agrega tu primera plantilla para comenzar',
      name: 'addYourFirstStencil',
      desc: 'Instrucción para agregar la primera plantilla',
      args: [],
    );
  }

  /// `Error Cargando Plantillas`
  String get errorLoadingStencils {
    return Intl.message(
      'Error Cargando Plantillas',
      name: 'errorLoadingStencils',
      desc: 'Mensaje de error cuando las plantillas no se pueden cargar',
      args: [],
    );
  }

  /// `Por favor intenta más tarde`
  String get tryAgainLater {
    return Intl.message(
      'Por favor intenta más tarde',
      name: 'tryAgainLater',
      desc: 'Sugerencia para intentar más tarde',
      args: [],
    );
  }

  /// `Buscar o crear etiquetas`
  String get searchOrCreateTags {
    return Intl.message(
      'Buscar o crear etiquetas',
      name: 'searchOrCreateTags',
      desc: 'Placeholder for tag search field',
      args: [],
    );
  }

  /// `Agrega etiquetas para hacer tu plantilla más visible`
  String get addTagsToMakeYourStencilMoreDiscoverable {
    return Intl.message(
      'Agrega etiquetas para hacer tu plantilla más visible',
      name: 'addTagsToMakeYourStencilMoreDiscoverable',
      desc: 'Helper text for adding tags',
      args: [],
    );
  }

  /// `Crear nueva etiqueta`
  String get createNewTag {
    return Intl.message(
      'Crear nueva etiqueta',
      name: 'createNewTag',
      desc: 'Action to create a new tag',
      args: [],
    );
  }

  /// `Sugerencias`
  String get suggestions {
    return Intl.message(
      'Sugerencias',
      name: 'suggestions',
      desc: 'Label for tag suggestions',
      args: [],
    );
  }

  /// `Etiquetas Populares`
  String get popularTags {
    return Intl.message(
      'Etiquetas Populares',
      name: 'popularTags',
      desc: 'Label for popular tags section',
      args: [],
    );
  }

  /// `No hay plantillas con la etiqueta '{tagName}'`
  String noStencilsWithTag(String tagName) {
    return Intl.message(
      'No hay plantillas con la etiqueta \'$tagName\'',
      name: 'noStencilsWithTag',
      desc: 'Message when no stencils have a specific tag',
      args: [tagName],
    );
  }

  /// `Limpiar Filtro`
  String get clearFilter {
    return Intl.message(
      'Limpiar Filtro',
      name: 'clearFilter',
      desc: 'Action to remove tag filter',
      args: [],
    );
  }

  /// `Agregar Trabajo`
  String get addWork {
    return Intl.message(
      'Agregar Trabajo',
      name: 'addWork',
      desc: 'Action to add a new work',
      args: [],
    );
  }

  /// `Trabajo creado exitosamente`
  String get workCreatedSuccessfully {
    return Intl.message(
      'Trabajo creado exitosamente',
      name: 'workCreatedSuccessfully',
      desc: 'Message displayed when a work is created successfully',
      args: [],
    );
  }

  /// `Agrega etiquetas para hacer tu trabajo más visible`
  String get addTagsToMakeYourWorkMoreDiscoverable {
    return Intl.message(
      'Agrega etiquetas para hacer tu trabajo más visible',
      name: 'addTagsToMakeYourWorkMoreDiscoverable',
      desc: 'Helper text for adding tags to works',
      args: [],
    );
  }

  /// `Trabajo Destacado`
  String get featuredWork {
    return Intl.message(
      'Trabajo Destacado',
      name: 'featuredWork',
      desc: 'Label for featured work option',
      args: [],
    );
  }

  /// `El trabajo será destacado en el perfil`
  String get workWillBeHighlightedInProfile {
    return Intl.message(
      'El trabajo será destacado en el perfil',
      name: 'workWillBeHighlightedInProfile',
      desc: 'Description for featured work option',
      args: [],
    );
  }

  /// `Ocultar Trabajo`
  String get hideWork {
    return Intl.message(
      'Ocultar Trabajo',
      name: 'hideWork',
      desc: 'Label for hiding work option',
      args: [],
    );
  }

  /// `El trabajo será ocultado de la vista pública`
  String get workWillBeHiddenFromPublicView {
    return Intl.message(
      'El trabajo será ocultado de la vista pública',
      name: 'workWillBeHiddenFromPublicView',
      desc: 'Description for hiding work option',
      args: [],
    );
  }

  /// `Guardar Trabajo`
  String get saveWork {
    return Intl.message(
      'Guardar Trabajo',
      name: 'saveWork',
      desc: 'Button to save work',
      args: [],
    );
  }

  /// `Eliminar Trabajo`
  String get deleteWork {
    return Intl.message(
      'Eliminar Trabajo',
      name: 'deleteWork',
      desc: 'Action to delete a work',
      args: [],
    );
  }

  /// `¿Estás seguro que deseas eliminar este trabajo?`
  String get areYouSureYouWantToDeleteThisWork {
    return Intl.message(
      '¿Estás seguro que deseas eliminar este trabajo?',
      name: 'areYouSureYouWantToDeleteThisWork',
      desc: 'Confirmation message for deleting a work',
      args: [],
    );
  }

  /// `Editar Trabajo`
  String get editWork {
    return Intl.message(
      'Editar Trabajo',
      name: 'editWork',
      desc: 'Action to edit a work',
      args: [],
    );
  }

  /// `Detalles del Trabajo`
  String get workDetails {
    return Intl.message(
      'Detalles del Trabajo',
      name: 'workDetails',
      desc: 'Label for work details section',
      args: [],
    );
  }

  /// `Trabajo actualizado exitosamente`
  String get workUpdatedSuccessfully {
    return Intl.message(
      'Trabajo actualizado exitosamente',
      name: 'workUpdatedSuccessfully',
      desc: 'Message displayed when a work is updated successfully',
      args: [],
    );
  }

  /// `Trabajo eliminado exitosamente`
  String get workDeletedSuccessfully {
    return Intl.message(
      'Trabajo eliminado exitosamente',
      name: 'workDeletedSuccessfully',
      desc: 'Message displayed when a work is deleted successfully',
      args: [],
    );
  }

  /// `Eliminar Trabajos Seleccionados`
  String get deleteSelectedWorks {
    return Intl.message(
      'Eliminar Trabajos Seleccionados',
      name: 'deleteSelectedWorks',
      desc: 'Action to delete multiple selected works',
      args: [],
    );
  }

  /// `¿Estás seguro que deseas eliminar estos trabajos?`
  String get areYouSureYouWantToDeleteTheseWorks {
    return Intl.message(
      '¿Estás seguro que deseas eliminar estos trabajos?',
      name: 'areYouSureYouWantToDeleteTheseWorks',
      desc: 'Confirmation message for deleting multiple works',
      args: [],
    );
  }

  /// `Mostrar Trabajos Ocultos`
  String get showHiddenWorks {
    return Intl.message(
      'Mostrar Trabajos Ocultos',
      name: 'showHiddenWorks',
      desc: 'Option to display hidden works',
      args: [],
    );
  }

  /// `Filtrar por Fuente`
  String get filterBySource {
    return Intl.message(
      'Filtrar por Fuente',
      name: 'filterBySource',
      desc: 'Label for source filtering option',
      args: [],
    );
  }

  /// `Todas las Fuentes`
  String get allSources {
    return Intl.message(
      'Todas las Fuentes',
      name: 'allSources',
      desc: 'Option to show works from all sources',
      args: [],
    );
  }

  /// `Seleccionado`
  String get selected {
    return Intl.message(
      'Seleccionado',
      name: 'selected',
      desc: 'Label indicating items are selected',
      args: [],
    );
  }

  /// `Trabajos`
  String get works {
    return Intl.message(
      'Trabajos',
      name: 'works',
      desc: 'Label for works section',
      args: [],
    );
  }

  /// `Cambiar Visibilidad`
  String get toggleVisibility {
    return Intl.message(
      'Cambiar Visibilidad',
      name: 'toggleVisibility',
      desc: 'Action to change visibility status',
      args: [],
    );
  }

  /// `Cambiar Destacado`
  String get toggleFeatured {
    return Intl.message(
      'Cambiar Destacado',
      name: 'toggleFeatured',
      desc: 'Action to change featured status',
      args: [],
    );
  }

  /// `Filtrar`
  String get filter {
    return Intl.message(
      'Filtrar',
      name: 'filter',
      desc: 'Label for filter action',
      args: [],
    );
  }

  /// `Selección Múltiple`
  String get selectMultiple {
    return Intl.message(
      'Selección Múltiple',
      name: 'selectMultiple',
      desc: 'Action to enable multiple selection mode',
      args: [],
    );
  }

  /// `No Se Encontraron Trabajos`
  String get noWorksFound {
    return Intl.message(
      'No Se Encontraron Trabajos',
      name: 'noWorksFound',
      desc: 'Message when no works are available',
      args: [],
    );
  }

  /// `Intenta quitar los filtros`
  String get tryRemovingFilters {
    return Intl.message(
      'Intenta quitar los filtros',
      name: 'tryRemovingFilters',
      desc: 'Suggestion to remove filters to see more results',
      args: [],
    );
  }

  /// `Agrega algunos trabajos a tu galería`
  String get addSomeWorksToYourGallery {
    return Intl.message(
      'Agrega algunos trabajos a tu galería',
      name: 'addSomeWorksToYourGallery',
      desc: 'Suggestion to add works when gallery is empty',
      args: [],
    );
  }

  /// `Limpiar Filtros`
  String get clearFilters {
    return Intl.message(
      'Limpiar Filtros',
      name: 'clearFilters',
      desc: 'Action to remove all filters',
      args: [],
    );
  }

  /// `Filtrando por etiqueta: {tagName}`
  String filteringByTag(String tagName) {
    return Intl.message(
      'Filtrando por etiqueta: $tagName',
      name: 'filteringByTag',
      desc: 'Message showing current tag filter',
      args: [tagName],
    );
  }

  /// `Filtrando por fuente: {sourceName}`
  String filteringBySource(String sourceName) {
    return Intl.message(
      'Filtrando por fuente: $sourceName',
      name: 'filteringBySource',
      desc: 'Message showing current source filter',
      args: [sourceName],
    );
  }

  /// `Aplicar`
  String get apply {
    return Intl.message(
      'Aplicar',
      name: 'apply',
      desc: 'Action to apply filters',
      args: [],
    );
  }

  /// `Filtros`
  String get filters {
    return Intl.message(
      'Filtros',
      name: 'filters',
      desc: 'Label for filters section',
      args: [],
    );
  }

  /// `Plantilla`
  String get stencil {
    return Intl.message(
      'Plantilla',
      name: 'stencil',
      desc: 'Label for stencil section',
      args: [],
    );
  }

  /// `Plantillas`
  String get stencils {
    return Intl.message(
      'Plantillas',
      name: 'stencils',
      desc: 'Label for stencils section',
      args: [],
    );
  }

  /// `Configuración de Agenda`
  String get agendaSettings {
    return Intl.message(
      'Configuración de Agenda',
      name: 'agendaSettings',
      desc: 'Title for agenda settings page',
      args: [],
    );
  }

  /// `Horario de trabajo`
  String get workingHours {
    return Intl.message(
      'Horario de trabajo',
      name: 'workingHours',
      desc:
          'Título para la sección de horario de trabajo en la configuración de agenda.',
      args: [],
    );
  }

  /// `Tiempos No Disponibles`
  String get unavailableTimes {
    return Intl.message(
      'Tiempos No Disponibles',
      name: 'unavailableTimes',
      desc: 'Label for unavailable times tab',
      args: [],
    );
  }

  /// `Configuración de Visibilidad`
  String get visibilitySettings {
    return Intl.message(
      'Configuración de Visibilidad',
      name: 'visibilitySettings',
      desc: 'Title for visibility settings section',
      args: [],
    );
  }

  /// `Agenda Pública`
  String get publicAgenda {
    return Intl.message(
      'Agenda Pública',
      name: 'publicAgenda',
      desc: 'Label for public agenda toggle',
      args: [],
    );
  }

  /// `Permite que los clientes vean tu disponibilidad`
  String get publicAgendaDescription {
    return Intl.message(
      'Permite que los clientes vean tu disponibilidad',
      name: 'publicAgendaDescription',
      desc: 'Description for public agenda setting',
      args: [],
    );
  }

  /// `Abierto para Reservas`
  String get openForReservations {
    return Intl.message(
      'Abierto para Reservas',
      name: 'openForReservations',
      desc: 'Label for open for reservations toggle',
      args: [],
    );
  }

  /// `Permite que los clientes reserven citas`
  String get openForReservationsDescription {
    return Intl.message(
      'Permite que los clientes reserven citas',
      name: 'openForReservationsDescription',
      desc: 'Description for open for reservations setting',
      args: [],
    );
  }

  /// `Guardar Configuración`
  String get saveConfiguration {
    return Intl.message(
      'Guardar Configuración',
      name: 'saveConfiguration',
      desc: 'Button text to save agenda settings',
      args: [],
    );
  }

  /// `Por favor selecciona un rango de fechas`
  String get pleaseSelectADateRange {
    return Intl.message(
      'Por favor selecciona un rango de fechas',
      name: 'pleaseSelectADateRange',
      desc: 'Error message when no date range is selected',
      args: [],
    );
  }

  /// `Tiempo No Disponible`
  String get unavailableTime {
    return Intl.message(
      'Tiempo No Disponible',
      name: 'unavailableTime',
      desc: 'Default reason for unavailable time',
      args: [],
    );
  }

  /// `Agregar Tiempo No Disponible`
  String get addUnavailableTime {
    return Intl.message(
      'Agregar Tiempo No Disponible',
      name: 'addUnavailableTime',
      desc: 'Title for adding unavailable time section',
      args: [],
    );
  }

  /// `Seleccionar Fechas`
  String get selectDates {
    return Intl.message(
      'Seleccionar Fechas',
      name: 'selectDates',
      desc: 'Button text to select date range',
      args: [],
    );
  }

  /// `Motivo`
  String get reason {
    return Intl.message(
      'Motivo',
      name: 'reason',
      desc: 'Label for reason field',
      args: [],
    );
  }

  /// `Opcional`
  String get optional {
    return Intl.message(
      'Opcional',
      name: 'optional',
      desc: 'Indicator for optional fields',
      args: [],
    );
  }

  /// `Agregar Tiempo`
  String get addTime {
    return Intl.message(
      'Agregar Tiempo',
      name: 'addTime',
      desc: 'Button text to add unavailable time',
      args: [],
    );
  }

  /// `No hay tiempos no disponibles configurados`
  String get noUnavailableTimesConfigured {
    return Intl.message(
      'No hay tiempos no disponibles configurados',
      name: 'noUnavailableTimesConfigured',
      desc: 'Message when no unavailable times are set',
      args: [],
    );
  }

  /// `Reintentar`
  String get retry {
    return Intl.message(
      'Reintentar',
      name: 'retry',
      desc: 'Botón para reintentar una acción.',
      args: [],
    );
  }

  /// `No hay trabajos de tatuaje agregados aún`
  String get noTattooWorksAddedYet {
    return Intl.message(
      'No hay trabajos de tatuaje agregados aún',
      name: 'noTattooWorksAddedYet',
      desc: 'Message shown when artist has no tattoo works',
      args: [],
    );
  }

  /// `Agrega fotos de tus mejores trabajos de tatuaje para mostrar tu estilo`
  String get addPhotosOfYourBestTattooWorkToShowcaseYourStyle {
    return Intl.message(
      'Agrega fotos de tus mejores trabajos de tatuaje para mostrar tu estilo',
      name: 'addPhotosOfYourBestTattooWorkToShowcaseYourStyle',
      desc: 'Suggestion for artists to add tattoo works',
      args: [],
    );
  }

  /// `Error al cargar trabajos`
  String get errorLoadingWorks {
    return Intl.message(
      'Error al cargar trabajos',
      name: 'errorLoadingWorks',
      desc: 'Error message when works cannot be loaded',
      args: [],
    );
  }

  /// `Intenta refrescar la página: {message}`
  String tryRefreshingThePage(String message) {
    return Intl.message(
      'Intenta refrescar la página: $message',
      name: 'tryRefreshingThePage',
      desc: 'Suggestion to refresh the page when there\'s an error',
      args: [message],
    );
  }

  /// `Ver Todos los Stencils`
  String get viewAllStencils {
    return Intl.message(
      'Ver Todos los Stencils',
      name: 'viewAllStencils',
      desc: 'Button text to view all stencils',
      args: [],
    );
  }

  /// `No hay stencils agregados aún`
  String get noStencilsAddedYet {
    return Intl.message(
      'No hay stencils agregados aún',
      name: 'noStencilsAddedYet',
      desc: 'Message shown when artist has no stencils',
      args: [],
    );
  }

  /// `Agrega tus diseños de stencil para mostrar tu estilo`
  String get addYourStencilDesignsToShowcaseYourStyle {
    return Intl.message(
      'Agrega tus diseños de stencil para mostrar tu estilo',
      name: 'addYourStencilDesignsToShowcaseYourStyle',
      desc: 'Suggestion for artists to add stencil designs',
      args: [],
    );
  }

  /// `Reseñas`
  String get reviews {
    return Intl.message(
      'Reseñas',
      name: 'reviews',
      desc: 'Label for reviews section',
      args: [],
    );
  }

  /// `Calificación Promedio`
  String get averageRating {
    return Intl.message(
      'Calificación Promedio',
      name: 'averageRating',
      desc: 'Label for average rating display',
      args: [],
    );
  }

  /// `Sobre Mí`
  String get aboutMe {
    return Intl.message(
      'Sobre Mí',
      name: 'aboutMe',
      desc: 'Section title for artist bio',
      args: [],
    );
  }

  /// `Agrega una breve descripción sobre ti y tu estilo de tatuaje`
  String get addAShortDescriptionAboutYourselfAndYourTattooStyle {
    return Intl.message(
      'Agrega una breve descripción sobre ti y tu estilo de tatuaje',
      name: 'addAShortDescriptionAboutYourselfAndYourTattooStyle',
      desc: 'Placeholder text for empty artist bio',
      args: [],
    );
  }

  /// `Trabajos de Tatuaje`
  String get tattooWorks {
    return Intl.message(
      'Trabajos de Tatuaje',
      name: 'tattooWorks',
      desc: 'Section title for tattoo works gallery',
      args: [],
    );
  }

  /// `Administrar Trabajos`
  String get manageWorks {
    return Intl.message(
      'Administrar Trabajos',
      name: 'manageWorks',
      desc: 'Button text to manage tattoo works',
      args: [],
    );
  }

  /// `Día`
  String get day {
    return Intl.message(
      'Día',
      name: 'day',
      desc: 'Label for day view in calendar',
      args: [],
    );
  }

  /// `Semana`
  String get week {
    return Intl.message(
      'Semana',
      name: 'week',
      desc: 'Label for week view in calendar',
      args: [],
    );
  }

  /// `Mes`
  String get month {
    return Intl.message(
      'Mes',
      name: 'month',
      desc: 'Label for month view in calendar',
      args: [],
    );
  }

  /// `No hay eventos para este día`
  String get noEventsForThisDay {
    return Intl.message(
      'No hay eventos para este día',
      name: 'noEventsForThisDay',
      desc: 'Message shown when there are no events for the selected day',
      args: [],
    );
  }

  /// `Agenda`
  String get agenda {
    return Intl.message(
      'Agenda',
      name: 'agenda',
      desc: 'Title for the agenda/calendar page',
      args: [],
    );
  }

  /// `Error al cargar eventos: {message}`
  String errorLoadingEvents(String message) {
    return Intl.message(
      'Error al cargar eventos: $message',
      name: 'errorLoadingEvents',
      desc: 'Error message when events cannot be loaded',
      args: [message],
    );
  }

  /// `Generador de Tatuajes`
  String get tattooGenerator {
    return Intl.message(
      'Generador de Tatuajes',
      name: 'tattooGenerator',
      desc: 'Title for the tattoo generator feature.',
      args: [],
    );
  }

  /// `Describe tu tatuaje`
  String get describeYourTattoo {
    return Intl.message(
      'Describe tu tatuaje',
      name: 'describeYourTattoo',
      desc: 'Label for the tattoo description input field.',
      args: [],
    );
  }

  /// `Elige un estilo`
  String get chooseStyle {
    return Intl.message(
      'Elige un estilo',
      name: 'chooseStyle',
      desc: 'Label for the tattoo style selection.',
      args: [],
    );
  }

  /// `Generar Tatuaje`
  String get generateTattoo {
    return Intl.message(
      'Generar Tatuaje',
      name: 'generateTattoo',
      desc: 'Button text to generate tattoo designs.',
      args: [],
    );
  }

  /// `Resultados`
  String get results {
    return Intl.message(
      'Resultados',
      name: 'results',
      desc: 'Label for the results section of generated tattoos.',
      args: [],
    );
  }

  /// `Ej. Silueta minimalista de lobo con patrones geométricos`
  String get tattooDescriptionHint {
    return Intl.message(
      'Ej. Silueta minimalista de lobo con patrones geométricos',
      name: 'tattooDescriptionHint',
      desc: 'Hint text for the tattoo description input field.',
      args: [],
    );
  }

  /// `Por favor ingresa una descripción`
  String get pleaseEnterDescription {
    return Intl.message(
      'Por favor ingresa una descripción',
      name: 'pleaseEnterDescription',
      desc: 'Validation message when description is empty.',
      args: [],
    );
  }

  /// `Ingresa una descripción y elige un estilo\npara generar diseños de tatuajes`
  String get emptyTattooGeneratorMessage {
    return Intl.message(
      'Ingresa una descripción y elige un estilo\npara generar diseños de tatuajes',
      name: 'emptyTattooGeneratorMessage',
      desc: 'Message displayed when no tattoos have been generated yet.',
      args: [],
    );
  }

  /// `Ver Detalles`
  String get viewTattooDetails {
    return Intl.message(
      'Ver Detalles',
      name: 'viewTattooDetails',
      desc: 'Button text to view tattoo details.',
      args: [],
    );
  }

  /// `Crear Cotización`
  String get createQuotationForTattoo {
    return Intl.message(
      'Crear Cotización',
      name: 'createQuotationForTattoo',
      desc: 'Button text to create a quotation for a tattoo design.',
      args: [],
    );
  }

  /// `No se generaron imágenes`
  String get noImagesGenerated {
    return Intl.message(
      'No se generaron imágenes',
      name: 'noImagesGenerated',
      desc: 'Error message when no images were generated.',
      args: [],
    );
  }

  /// `No se encontró una sesión activa`
  String get noActiveSession {
    return Intl.message(
      'No se encontró una sesión activa',
      name: 'noActiveSession',
      desc: 'Error message when no active user session is found.',
      args: [],
    );
  }

  /// `Generar`
  String get generate {
    return Intl.message(
      'Generar',
      name: 'generate',
      desc: 'Button text to generate tattoo designs.',
      args: [],
    );
  }

  /// `Historial`
  String get history {
    return Intl.message(
      'Historial',
      name: 'history',
      desc: 'Label for the history tab.',
      args: [],
    );
  }

  /// `Favoritos`
  String get favorites {
    return Intl.message(
      'Favoritos',
      name: 'favorites',
      desc: 'Label for the favorites tab.',
      args: [],
    );
  }

  /// `Diseño agregado a favoritos`
  String get designAddedToFavorites {
    return Intl.message(
      'Diseño agregado a favoritos',
      name: 'designAddedToFavorites',
      desc: 'Message shown when a design is added to favorites.',
      args: [],
    );
  }

  /// `Diseño removido de favoritos`
  String get designRemovedFromFavorites {
    return Intl.message(
      'Diseño removido de favoritos',
      name: 'designRemovedFromFavorites',
      desc: 'Message shown when a design is removed from favorites.',
      args: [],
    );
  }

  /// `No hay diseños en el historial`
  String get noDesignsOnHistory {
    return Intl.message(
      'No hay diseños en el historial',
      name: 'noDesignsOnHistory',
      desc: 'Message shown when there are no designs on history.',
      args: [],
    );
  }

  /// `No hay diseños en favoritos`
  String get noDesignsOnFavorites {
    return Intl.message(
      'No hay diseños en favoritos',
      name: 'noDesignsOnFavorites',
      desc: 'Message shown when there are no designs on favorites.',
      args: [],
    );
  }

  /// `Habilitar servicios de ubicación y permisos`
  String get enableLocationServicesAndPermissions {
    return Intl.message(
      'Habilitar servicios de ubicación y permisos',
      name: 'enableLocationServicesAndPermissions',
      desc:
          'Message prompting user to enable location services and permissions.',
      args: [],
    );
  }

  /// `No se pudo obtener la ubicación`
  String get couldNotGetLocation {
    return Intl.message(
      'No se pudo obtener la ubicación',
      name: 'couldNotGetLocation',
      desc: 'Error message when location could not be retrieved.',
      args: [],
    );
  }

  /// `No se pudo obtener tu ubicación. Por favor intenta nuevamente.`
  String get couldNotGetLocationPleaseRetry {
    return Intl.message(
      'No se pudo obtener tu ubicación. Por favor intenta nuevamente.',
      name: 'couldNotGetLocationPleaseRetry',
      desc:
          'Error message when location could not be retrieved with retry suggestion.',
      args: [],
    );
  }

  /// `No has iniciado sesión`
  String get notLoggedIn {
    return Intl.message(
      'No has iniciado sesión',
      name: 'notLoggedIn',
      desc: 'Message shown when user is not logged in.',
      args: [],
    );
  }

  /// `Cotización abierta creada exitosamente`
  String get openQuotationCreatedSuccessfully {
    return Intl.message(
      'Cotización abierta creada exitosamente',
      name: 'openQuotationCreatedSuccessfully',
      desc: 'Success message when an open quotation is created.',
      args: [],
    );
  }

  /// `Error al crear cotización`
  String get errorCreatingQuotation {
    return Intl.message(
      'Error al crear cotización',
      name: 'errorCreatingQuotation',
      desc: 'Error message when quotation creation fails.',
      args: [],
    );
  }

  /// `Crear Cotización Abierta`
  String get createOpenQuotation {
    return Intl.message(
      'Crear Cotización Abierta',
      name: 'createOpenQuotation',
      desc: 'Title for the open quotation creation screen.',
      args: [],
    );
  }

  /// `Describe tu idea de tatuaje`
  String get describeYourTattooIdea {
    return Intl.message(
      'Describe tu idea de tatuaje',
      name: 'describeYourTattooIdea',
      desc: 'Prompt for user to describe their tattoo idea.',
      args: [],
    );
  }

  /// `Distancia máxima de viaje (km)`
  String get maxTravelDistanceKm {
    return Intl.message(
      'Distancia máxima de viaje (km)',
      name: 'maxTravelDistanceKm',
      desc: 'Label for maximum travel distance input field.',
      args: [],
    );
  }

  /// `Ingresa distancia en km`
  String get enterDistanceKm {
    return Intl.message(
      'Ingresa distancia en km',
      name: 'enterDistanceKm',
      desc: 'Placeholder for distance input field.',
      args: [],
    );
  }

  /// `Por favor ingresa un radio de viaje`
  String get pleaseEnterTravelRadius {
    return Intl.message(
      'Por favor ingresa un radio de viaje',
      name: 'pleaseEnterTravelRadius',
      desc: 'Validation message when travel radius is empty.',
      args: [],
    );
  }

  /// `Por favor ingresa un número positivo válido`
  String get pleaseEnterValidPositiveNumber {
    return Intl.message(
      'Por favor ingresa un número positivo válido',
      name: 'pleaseEnterValidPositiveNumber',
      desc: 'Validation message for positive number inputs.',
      args: [],
    );
  }

  /// `Opcional: Agregar plantilla o diseño`
  String get optionalAddStencilOrDesign {
    return Intl.message(
      'Opcional: Agregar plantilla o diseño',
      name: 'optionalAddStencilOrDesign',
      desc: 'Label for optional stencil or design upload.',
      args: [],
    );
  }

  /// `Agregar imágenes de referencia`
  String get addReferenceImages {
    return Intl.message(
      'Agregar imágenes de referencia',
      name: 'addReferenceImages',
      desc: 'Button text to add reference images.',
      args: [],
    );
  }

  /// `Enviar Cotización Abierta`
  String get submitOpenQuotation {
    return Intl.message(
      'Enviar Cotización Abierta',
      name: 'submitOpenQuotation',
      desc: 'Button text to submit an open quotation.',
      args: [],
    );
  }

  /// `No puedes seleccionar una plantilla y un diseño a la vez`
  String get cannotSelectStencilAndDesign {
    return Intl.message(
      'No puedes seleccionar una plantilla y un diseño a la vez',
      name: 'cannotSelectStencilAndDesign',
      desc:
          'Error message when user tries to select both a stencil and a design.',
      args: [],
    );
  }

  /// `Opcional: Adjuntar un diseño`
  String get optionalAttachDesign {
    return Intl.message(
      'Opcional: Adjuntar un diseño',
      name: 'optionalAttachDesign',
      desc: 'Label for optional design attachment section.',
      args: [],
    );
  }

  /// `Puedes adjuntar una plantilla o un diseño generado a tu cotización`
  String get attachStencilOrGeneratedDesignHint {
    return Intl.message(
      'Puedes adjuntar una plantilla o un diseño generado a tu cotización',
      name: 'attachStencilOrGeneratedDesignHint',
      desc: 'Hint text explaining stencil or design attachment options.',
      args: [],
    );
  }

  /// `Seleccionar Plantilla`
  String get selectStencil {
    return Intl.message(
      'Seleccionar Plantilla',
      name: 'selectStencil',
      desc: 'Button text to select a stencil.',
      args: [],
    );
  }

  /// `Seleccionar Diseño Generado`
  String get selectGeneratedDesign {
    return Intl.message(
      'Seleccionar Diseño Generado',
      name: 'selectGeneratedDesign',
      desc: 'Button text to select a generated design.',
      args: [],
    );
  }

  /// `Diseño Generado Seleccionado`
  String get selectedGeneratedDesign {
    return Intl.message(
      'Diseño Generado Seleccionado',
      name: 'selectedGeneratedDesign',
      desc: 'Label for the selected generated design.',
      args: [],
    );
  }

  /// `Agregar imágenes de referencia (opcional)`
  String get addReferenceImagesOptional {
    return Intl.message(
      'Agregar imágenes de referencia (opcional)',
      name: 'addReferenceImagesOptional',
      desc: 'Label for optional reference images section.',
      args: [],
    );
  }

  /// `Plantilla Seleccionada`
  String get selectedStencil {
    return Intl.message(
      'Plantilla Seleccionada',
      name: 'selectedStencil',
      desc: 'Label for the selected stencil.',
      args: [],
    );
  }

  /// `Limpiar Selección`
  String get clearSelection {
    return Intl.message(
      'Limpiar Selección',
      name: 'clearSelection',
      desc: 'Tooltip for button to clear a selection.',
      args: [],
    );
  }

  /// `Agregar más imágenes`
  String get addMoreImages {
    return Intl.message(
      'Agregar más imágenes',
      name: 'addMoreImages',
      desc: 'Button text to add more images.',
      args: [],
    );
  }

  /// `Cotizaciones Directas`
  String get directQuotations {
    return Intl.message(
      'Cotizaciones Directas',
      name: 'directQuotations',
      desc: 'Label for direct quotations tab in quotation list.',
      args: [],
    );
  }

  /// `Cotizaciones Abiertas`
  String get openQuotations {
    return Intl.message(
      'Cotizaciones Abiertas',
      name: 'openQuotations',
      desc: 'Label for open quotations tab in quotation list.',
      args: [],
    );
  }

  /// `Buscando Artistas...`
  String get findingArtists {
    return Intl.message(
      'Buscando Artistas...',
      name: 'findingArtists',
      desc:
          'Status text shown when an open quotation is searching for artists.',
      args: [],
    );
  }

  /// `Abierta`
  String get quotationStatusCustomerOpen {
    return Intl.message(
      'Abierta',
      name: 'quotationStatusCustomerOpen',
      desc: 'Status text for open quotations from customer perspective.',
      args: [],
    );
  }

  /// `Abierta`
  String get quotationStatusArtistOpen {
    return Intl.message(
      'Abierta',
      name: 'quotationStatusArtistOpen',
      desc: 'Status text for open quotations from artist perspective.',
      args: [],
    );
  }

  /// `Tradicional Americana`
  String get tattooStyleTraditionalAmerican {
    return Intl.message(
      'Tradicional Americana',
      name: 'tattooStyleTraditionalAmerican',
      desc: 'Estilo de tatuaje: Tradicional Americana',
      args: [],
    );
  }

  /// `Neotradicional`
  String get tattooStyleNeotraditional {
    return Intl.message(
      'Neotradicional',
      name: 'tattooStyleNeotraditional',
      desc: 'Estilo de tatuaje: Neotradicional',
      args: [],
    );
  }

  /// `Realismo`
  String get tattooStyleRealism {
    return Intl.message(
      'Realismo',
      name: 'tattooStyleRealism',
      desc: 'Estilo de tatuaje: Realismo',
      args: [],
    );
  }

  /// `Acuarela`
  String get tattooStyleWatercolor {
    return Intl.message(
      'Acuarela',
      name: 'tattooStyleWatercolor',
      desc: 'Estilo de tatuaje: Acuarela',
      args: [],
    );
  }

  /// `Geométrico`
  String get tattooStyleGeometric {
    return Intl.message(
      'Geométrico',
      name: 'tattooStyleGeometric',
      desc: 'Estilo de tatuaje: Geométrico',
      args: [],
    );
  }

  /// `Blackwork`
  String get tattooStyleBlackwork {
    return Intl.message(
      'Blackwork',
      name: 'tattooStyleBlackwork',
      desc: 'Estilo de tatuaje: Blackwork',
      args: [],
    );
  }

  /// `Dotwork`
  String get tattooStyleDotwork {
    return Intl.message(
      'Dotwork',
      name: 'tattooStyleDotwork',
      desc: 'Estilo de tatuaje: Dotwork',
      args: [],
    );
  }

  /// `Japonés`
  String get tattooStyleJapanese {
    return Intl.message(
      'Japonés',
      name: 'tattooStyleJapanese',
      desc: 'Estilo de tatuaje: Japonés',
      args: [],
    );
  }

  /// `Tribal`
  String get tattooStyleTribal {
    return Intl.message(
      'Tribal',
      name: 'tattooStyleTribal',
      desc: 'Estilo de tatuaje: Tribal',
      args: [],
    );
  }

  /// `New School`
  String get tattooStyleNewSchool {
    return Intl.message(
      'New School',
      name: 'tattooStyleNewSchool',
      desc: 'Estilo de tatuaje: New School',
      args: [],
    );
  }

  /// `Biomecánico`
  String get tattooStyleBiomechanical {
    return Intl.message(
      'Biomecánico',
      name: 'tattooStyleBiomechanical',
      desc: 'Estilo de tatuaje: Biomecánico',
      args: [],
    );
  }

  /// `Minimalista`
  String get tattooStyleMinimalist {
    return Intl.message(
      'Minimalista',
      name: 'tattooStyleMinimalist',
      desc: 'Estilo de tatuaje: Minimalista',
      args: [],
    );
  }

  /// `Surrealismo`
  String get tattooStyleSurrealism {
    return Intl.message(
      'Surrealismo',
      name: 'tattooStyleSurrealism',
      desc: 'Estilo de tatuaje: Surrealismo',
      args: [],
    );
  }

  /// `Ornamental`
  String get tattooStyleOrnamental {
    return Intl.message(
      'Ornamental',
      name: 'tattooStyleOrnamental',
      desc: 'Estilo de tatuaje: Ornamental',
      args: [],
    );
  }

  /// `Neo Japonés`
  String get tattooStyleNeoJapanese {
    return Intl.message(
      'Neo Japonés',
      name: 'tattooStyleNeoJapanese',
      desc: 'Estilo de tatuaje: Neo Japonés',
      args: [],
    );
  }

  /// `Celta`
  String get tattooStyleCeltic {
    return Intl.message(
      'Celta',
      name: 'tattooStyleCeltic',
      desc: 'Estilo de tatuaje: Celta',
      args: [],
    );
  }

  /// `Chicano`
  String get tattooStyleChicano {
    return Intl.message(
      'Chicano',
      name: 'tattooStyleChicano',
      desc: 'Estilo de tatuaje: Chicano',
      args: [],
    );
  }

  /// `Abstracto`
  String get tattooStyleAbstract {
    return Intl.message(
      'Abstracto',
      name: 'tattooStyleAbstract',
      desc: 'Estilo de tatuaje: Abstracto',
      args: [],
    );
  }

  /// `Mandala`
  String get tattooStyleMandala {
    return Intl.message(
      'Mandala',
      name: 'tattooStyleMandala',
      desc: 'Estilo de tatuaje: Mandala',
      args: [],
    );
  }

  /// `Fineline`
  String get tattooStyleFineline {
    return Intl.message(
      'Fineline',
      name: 'tattooStyleFineline',
      desc: 'Estilo de tatuaje: Fineline',
      args: [],
    );
  }

  /// `Ignorant Style`
  String get tattooStyleIgnorantStyle {
    return Intl.message(
      'Ignorant Style',
      name: 'tattooStyleIgnorantStyle',
      desc: 'Estilo de tatuaje: Ignorant Style',
      args: [],
    );
  }

  /// `Ofrecido`
  String get offered {
    return Intl.message(
      'Ofrecido',
      name: 'offered',
      desc: 'Text shown when an artist has offered a quotation.',
      args: [],
    );
  }

  /// `Abierto`
  String get open {
    return Intl.message(
      'Abierto',
      name: 'open',
      desc: 'Text shown when a quotation is open.',
      args: [],
    );
  }

  /// `¡El cliente está buscando ofertas!`
  String get customerLookingForOffers {
    return Intl.message(
      '¡El cliente está buscando ofertas!',
      name: 'customerLookingForOffers',
      desc: 'Banner cuando el cliente busca ofertas.',
      args: [],
    );
  }

  /// `Revisa los detalles y envía tu oferta`
  String get reviewDetailsAndSubmitOffer {
    return Intl.message(
      'Revisa los detalles y envía tu oferta',
      name: 'reviewDetailsAndSubmitOffer',
      desc: 'Prompt to review details and submit an offer.',
      args: [],
    );
  }

  /// `Enviar oferta`
  String get sendOffer {
    return Intl.message(
      'Enviar oferta',
      name: 'sendOffer',
      desc: 'Botón para enviar una oferta.',
      args: [],
    );
  }

  /// `Oferta enviada`
  String get offerSubmitted {
    return Intl.message(
      'Oferta enviada',
      name: 'offerSubmitted',
      desc: 'Etiqueta cuando una oferta ha sido enviada.',
      args: [],
    );
  }

  /// `Tu oferta de {amount} ha sido enviada`
  String offerSubmittedWithAmount(String amount) {
    return Intl.message(
      'Tu oferta de $amount ha sido enviada',
      name: 'offerSubmittedWithAmount',
      desc:
          'Confirmation message that an offer with a specific amount has been submitted.',
      args: [amount],
    );
  }

  /// `Ya has ofertado`
  String get alreadyOffered {
    return Intl.message(
      'Ya has ofertado',
      name: 'alreadyOffered',
      desc: 'Text shown when an artist has already submitted an offer.',
      args: [],
    );
  }

  /// `Estado: {status}`
  String statusWithText(String status) {
    return Intl.message(
      'Estado: $status',
      name: 'statusWithText',
      desc: 'Text showing the status with a label.',
      args: [status],
    );
  }

  /// `Ofertas Recibidas`
  String get receivedOffers {
    return Intl.message(
      'Ofertas Recibidas',
      name: 'receivedOffers',
      desc: 'Text indicating that offers have been received.',
      args: [],
    );
  }

  /// `{count, plural, =0{Sin ofertas} =1{1 oferta} other{{count} ofertas}}`
  String offersCount(int count) {
    return Intl.plural(
      count,
      zero: 'Sin ofertas',
      one: '1 oferta',
      other: '$count ofertas',
      name: 'offersCount',
      desc: 'Text showing the count of offers received.',
      args: [count],
    );
  }

  /// `Aún no hay ofertas`
  String get noOffersYet {
    return Intl.message(
      'Aún no hay ofertas',
      name: 'noOffersYet',
      desc: 'Text shown when no offers have been received yet.',
      args: [],
    );
  }

  /// `Ver Ofertas`
  String get viewOffers {
    return Intl.message(
      'Ver Ofertas',
      name: 'viewOffers',
      desc: 'Button text for viewing offers.',
      args: [],
    );
  }

  /// `Cerrar`
  String get close {
    return Intl.message(
      'Cerrar',
      name: 'close',
      desc: 'Tooltip para botón de cerrar.',
      args: [],
    );
  }

  /// `Oferta aceptada exitosamente`
  String get quotationAcceptedSuccess {
    return Intl.message(
      'Oferta aceptada exitosamente',
      name: 'quotationAcceptedSuccess',
      desc: 'Mensaje de éxito cuando una oferta es aceptada.',
      args: [],
    );
  }

  /// `Presupuesto de referencia: {amount} {currency}`
  String referenceBudget(Object amount, Object currency) {
    return Intl.message(
      'Presupuesto de referencia: $amount $currency',
      name: 'referenceBudget',
      desc: 'Etiqueta para el presupuesto de referencia con monto y moneda.',
      args: [amount, currency],
    );
  }

  /// `Ya has enviado una oferta`
  String get alreadySubmittedOffer {
    return Intl.message(
      'Ya has enviado una oferta',
      name: 'alreadySubmittedOffer',
      desc: 'Mensaje cuando el artista ya envió una oferta.',
      args: [],
    );
  }

  /// `Mensaje al cliente`
  String get messageCustomer {
    return Intl.message(
      'Mensaje al cliente',
      name: 'messageCustomer',
      desc: 'Botón para enviar mensaje al cliente.',
      args: [],
    );
  }

  /// `Revisa los detalles y envía tu oferta para ganar este proyecto.`
  String get reviewAndSubmitOffer {
    return Intl.message(
      'Revisa los detalles y envía tu oferta para ganar este proyecto.',
      name: 'reviewAndSubmitOffer',
      desc: 'Instrucción para revisar y enviar oferta.',
      args: [],
    );
  }

  /// `Diseño seleccionado`
  String get selectedDesign {
    return Intl.message(
      'Diseño seleccionado',
      name: 'selectedDesign',
      desc: 'Sección para el diseño seleccionado.',
      args: [],
    );
  }

  /// `Solicitud de Cotización Abierta`
  String get openQuotationRequest {
    return Intl.message(
      'Solicitud de Cotización Abierta',
      name: 'openQuotationRequest',
      desc: 'Banner para solicitud de cotización abierta.',
      args: [],
    );
  }

  /// `Este cliente está buscando ofertas. Puedes enviar tu cotización para ganar este proyecto.`
  String get openQuotationRequestDesc {
    return Intl.message(
      'Este cliente está buscando ofertas. Puedes enviar tu cotización para ganar este proyecto.',
      name: 'openQuotationRequestDesc',
      desc: 'Descripción del banner de solicitud abierta.',
      args: [],
    );
  }

  /// `Has recibido {count} {offerWord}`
  String offersReceived(Object count, Object offerWord) {
    return Intl.message(
      'Has recibido $count $offerWord',
      name: 'offersReceived',
      desc: 'Mensaje mostrando el número de ofertas recibidas.',
      args: [count, offerWord],
    );
  }

  /// `Aún no has recibido ofertas`
  String get noOffersReceived {
    return Intl.message(
      'Aún no has recibido ofertas',
      name: 'noOffersReceived',
      desc: 'Mensaje cuando no se han recibido ofertas.',
      args: [],
    );
  }

  /// `Revisa cada oferta y chatea con los artistas`
  String get reviewEachOffer {
    return Intl.message(
      'Revisa cada oferta y chatea con los artistas',
      name: 'reviewEachOffer',
      desc: 'Instrucción para revisar ofertas y chatear.',
      args: [],
    );
  }

  /// `Las ofertas aparecerán aquí cuando las recibas`
  String get offersAppearHere {
    return Intl.message(
      'Las ofertas aparecerán aquí cuando las recibas',
      name: 'offersAppearHere',
      desc: 'Mensaje de que las ofertas aparecerán aquí.',
      args: [],
    );
  }

  /// `Ofertas recibidas`
  String get offersReceivedTitle {
    return Intl.message(
      'Ofertas recibidas',
      name: 'offersReceivedTitle',
      desc: 'Título de sección para ofertas recibidas.',
      args: [],
    );
  }

  /// `Artista: {name}`
  String artistLabel(Object name) {
    return Intl.message(
      'Artista: $name',
      name: 'artistLabel',
      desc: 'Etiqueta para el nombre del artista.',
      args: [name],
    );
  }

  /// `No especificado`
  String get notSpecified {
    return Intl.message(
      'No especificado',
      name: 'notSpecified',
      desc: 'Texto para valores no especificados.',
      args: [],
    );
  }

  /// `{count} {messageWord}`
  String messagesCount(Object count, Object messageWord) {
    return Intl.message(
      '$count $messageWord',
      name: 'messagesCount',
      desc: 'Etiqueta para número de mensajes.',
      args: [count, messageWord],
    );
  }

  /// `Mensaje: {preview}`
  String messagePreview(Object preview) {
    return Intl.message(
      'Mensaje: $preview',
      name: 'messagePreview',
      desc: 'Vista previa de un mensaje.',
      args: [preview],
    );
  }

  /// `Iniciar chat`
  String get startChat {
    return Intl.message(
      'Iniciar chat',
      name: 'startChat',
      desc: 'Botón para iniciar chat.',
      args: [],
    );
  }

  /// `Aceptar oferta`
  String get acceptOffer {
    return Intl.message(
      'Aceptar oferta',
      name: 'acceptOffer',
      desc: 'Botón para aceptar una oferta.',
      args: [],
    );
  }

  /// `Editar oferta`
  String get editOffer {
    return Intl.message(
      'Editar oferta',
      name: 'editOffer',
      desc: 'Tooltip para editar una oferta.',
      args: [],
    );
  }

  /// `Intentar de nuevo`
  String get tryAgain {
    return Intl.message(
      'Intentar de nuevo',
      name: 'tryAgain',
      desc: 'Botón para intentar una acción nuevamente.',
      args: [],
    );
  }

  /// `Aún no hay mensajes`
  String get noMessagesYet {
    return Intl.message(
      'Aún no hay mensajes',
      name: 'noMessagesYet',
      desc: 'Estado vacío cuando no hay mensajes.',
      args: [],
    );
  }

  /// `Comienza la conversación enviando un mensaje`
  String get startConversation {
    return Intl.message(
      'Comienza la conversación enviando un mensaje',
      name: 'startConversation',
      desc: 'Sugerencia para iniciar conversación.',
      args: [],
    );
  }

  /// `Escribe un mensaje`
  String get typeAMessage {
    return Intl.message(
      'Escribe un mensaje',
      name: 'typeAMessage',
      desc: 'Hint para el campo de mensaje.',
      args: [],
    );
  }

  /// `Galería de fotos`
  String get photoLibrary {
    return Intl.message(
      'Galería de fotos',
      name: 'photoLibrary',
      desc: 'Opción para elegir imagen de la galería.',
      args: [],
    );
  }

  /// `Cámara`
  String get camera {
    return Intl.message(
      'Cámara',
      name: 'camera',
      desc: 'Opción para elegir imagen de la cámara.',
      args: [],
    );
  }

  /// `No se pudo seleccionar la imagen: {error}`
  String couldNotPickImage(Object error) {
    return Intl.message(
      'No se pudo seleccionar la imagen: $error',
      name: 'couldNotPickImage',
      desc: 'Mensaje de error al seleccionar imagen.',
      args: [error],
    );
  }

  /// `Costo estimado (CLP)`
  String get estimatedCostLabel {
    return Intl.message(
      'Costo estimado (CLP)',
      name: 'estimatedCostLabel',
      desc: 'Etiqueta para el campo de costo estimado.',
      args: [],
    );
  }

  /// `Ej: 50000`
  String get exampleAmount {
    return Intl.message(
      'Ej: 50000',
      name: 'exampleAmount',
      desc: 'Hint para monto de ejemplo.',
      args: [],
    );
  }

  /// `El artista actualizó el costo de la oferta a {amount} CLP.`
  String systemOfferUpdate(Object amount) {
    return Intl.message(
      'El artista actualizó el costo de la oferta a $amount CLP.',
      name: 'systemOfferUpdate',
      desc:
          'Mensaje de sistema cuando el artista actualiza el costo de la oferta.',
      args: [amount],
    );
  }

  /// `Enviar oferta`
  String get submitOffer {
    return Intl.message(
      'Enviar oferta',
      name: 'submitOffer',
      desc:
          'Botón para enviar una oferta en la página de oferta de cotización abierta del artista.',
      args: [],
    );
  }

  /// `Enviando oferta...`
  String get submittingOffer {
    return Intl.message(
      'Enviando oferta...',
      name: 'submittingOffer',
      desc: 'Título mostrado mientras se envía la oferta.',
      args: [],
    );
  }

  /// `Por favor espera mientras se envía tu oferta.`
  String get submittingOfferMessage {
    return Intl.message(
      'Por favor espera mientras se envía tu oferta.',
      name: 'submittingOfferMessage',
      desc: 'Mensaje mostrado mientras se envía la oferta.',
      args: [],
    );
  }

  /// `¡Oferta enviada!`
  String get offerSubmittedTitle {
    return Intl.message(
      '¡Oferta enviada!',
      name: 'offerSubmittedTitle',
      desc: 'Título mostrado cuando la oferta se ha enviado exitosamente.',
      args: [],
    );
  }

  /// `Tu oferta ha sido enviada exitosamente al cliente.`
  String get offerSubmittedMessage {
    return Intl.message(
      'Tu oferta ha sido enviada exitosamente al cliente.',
      name: 'offerSubmittedMessage',
      desc: 'Mensaje mostrado cuando la oferta se ha enviado exitosamente.',
      args: [],
    );
  }

  /// `Tu oferta`
  String get yourOffer {
    return Intl.message(
      'Tu oferta',
      name: 'yourOffer',
      desc: 'Título de sección para el formulario de oferta del artista.',
      args: [],
    );
  }

  /// `Cita propuesta`
  String get proposedAppointment {
    return Intl.message(
      'Cita propuesta',
      name: 'proposedAppointment',
      desc:
          'Etiqueta para el campo de cita propuesta en el formulario de oferta.',
      args: [],
    );
  }

  /// `Detalles adicionales (opcional)`
  String get additionalDetailsOptional {
    return Intl.message(
      'Detalles adicionales (opcional)',
      name: 'additionalDetailsOptional',
      desc:
          'Etiqueta para el campo de detalles adicionales en el formulario de oferta, marcado como opcional.',
      args: [],
    );
  }

  /// `Diseños propuestos (opcional)`
  String get proposedDesignsOptional {
    return Intl.message(
      'Diseños propuestos (opcional)',
      name: 'proposedDesignsOptional',
      desc:
          'Etiqueta para la sección de carga de diseños propuestos, marcada como opcional.',
      args: [],
    );
  }

  /// `Agrega imágenes de referencia o bocetos para tu propuesta.`
  String get addReferenceImagesOrSketches {
    return Intl.message(
      'Agrega imágenes de referencia o bocetos para tu propuesta.',
      name: 'addReferenceImagesOrSketches',
      desc:
          'Texto de ayuda para subir imágenes de referencia o bocetos para la oferta.',
      args: [],
    );
  }

  /// `Agregar diseño`
  String get addDesign {
    return Intl.message(
      'Agregar diseño',
      name: 'addDesign',
      desc: 'Botón para agregar una imagen de diseño a la oferta.',
      args: [],
    );
  }

  /// `La duración debe ser positiva`
  String get durationMustBePositive {
    return Intl.message(
      'La duración debe ser positiva',
      name: 'durationMustBePositive',
      desc:
          'Mensaje de error cuando la duración no es positiva en el formulario de oferta.',
      args: [],
    );
  }

  /// `Diseño guardado en tus diseños generados`
  String get designSavedToYourGeneratedDesigns {
    return Intl.message(
      'Diseño guardado en tus diseños generados',
      name: 'designSavedToYourGeneratedDesigns',
      desc:
          'Mensaje mostrado cuando un diseño se guarda en los diseños generados del usuario.',
      args: [],
    );
  }

  /// `Cotizaciones`
  String get quotations {
    return Intl.message(
      'Cotizaciones',
      name: 'quotations',
      desc: 'Etiqueta para la sección de cotizaciones.',
      args: [],
    );
  }

  /// `CLP`
  String get currency {
    return Intl.message(
      'CLP',
      name: 'currency',
      desc: 'Etiqueta para la moneda.',
      args: [],
    );
  }

  /// `km de distancia`
  String get kmAway {
    return Intl.message(
      'km de distancia',
      name: 'kmAway',
      desc: 'Etiqueta para la distancia en kilómetros.',
      args: [],
    );
  }

  /// `Costo de la oferta`
  String get offerCost {
    return Intl.message(
      'Costo de la oferta',
      name: 'offerCost',
      desc: 'Etiqueta para el costo de la oferta.',
      args: [],
    );
  }

  /// `Duración estimada`
  String get estimatedDuration {
    return Intl.message(
      'Duración estimada',
      name: 'estimatedDuration',
      desc: 'Etiqueta para la duración estimada.',
      args: [],
    );
  }

  /// `Oferta aceptada exitosamente`
  String get offerAcceptedSuccessfully {
    return Intl.message(
      'Oferta aceptada exitosamente',
      name: 'offerAcceptedSuccessfully',
      desc: 'Mensaje de éxito mostrado cuando una oferta ha sido aceptada.',
      args: [],
    );
  }

  /// `Abierta`
  String get statusOpen {
    return Intl.message(
      'Abierta',
      name: 'statusOpen',
      desc: 'Etiqueta para el estado abierto de una cotización.',
      args: [],
    );
  }

  /// `mensajes`
  String get messages {
    return Intl.message(
      'mensajes',
      name: 'messages',
      desc: 'Etiqueta para el conteo de mensajes en una conversación.',
      args: [],
    );
  }

  /// `Mensaje`
  String get message {
    return Intl.message(
      'Mensaje',
      name: 'message',
      desc: 'Etiqueta para un mensaje en una conversación.',
      args: [],
    );
  }

  /// `El artista actualizó el costo de la oferta a {amount} {currency}`
  String artistUpdatedOfferCost(Object amount, Object currency) {
    return Intl.message(
      'El artista actualizó el costo de la oferta a $amount $currency',
      name: 'artistUpdatedOfferCost',
      desc:
          'Mensaje mostrado cuando el artista actualiza el costo de la oferta.',
      args: [amount, currency],
    );
  }

  /// `Nueva cotización`
  String get newQuotation {
    return Intl.message(
      'Nueva cotización',
      name: 'newQuotation',
      desc: 'Etiqueta para una nueva cotización.',
      args: [],
    );
  }

  /// `No se encontraron solicitudes`
  String get noRequestsFound {
    return Intl.message(
      'No se encontraron solicitudes',
      name: 'noRequestsFound',
      desc: 'Mensaje mostrado cuando no se encuentran solicitudes.',
      args: [],
    );
  }

  /// `No hay cotizaciones abiertas`
  String get noOpenQuotationsFoundTitle {
    return Intl.message(
      'No hay cotizaciones abiertas',
      name: 'noOpenQuotationsFoundTitle',
      desc: 'Título mostrado cuando no se encuentran cotizaciones abiertas.',
      args: [],
    );
  }

  /// `No tienes cotizaciones abiertas en este momento`
  String get noOpenQuotationsFoundBody {
    return Intl.message(
      'No tienes cotizaciones abiertas en este momento',
      name: 'noOpenQuotationsFoundBody',
      desc: 'Mensaje mostrado cuando no se encuentran cotizaciones abiertas.',
      args: [],
    );
  }

  /// `No hay cotizaciones participantes`
  String get noParticipatingQuotationsFoundTitle {
    return Intl.message(
      'No hay cotizaciones participantes',
      name: 'noParticipatingQuotationsFoundTitle',
      desc:
          'Título mostrado cuando no se encuentran cotizaciones participantes.',
      args: [],
    );
  }

  /// `No estás participando en ninguna cotización en este momento`
  String get noParticipatingQuotationsFoundBody {
    return Intl.message(
      'No estás participando en ninguna cotización en este momento',
      name: 'noParticipatingQuotationsFoundBody',
      desc:
          'Mensaje mostrado cuando no se encuentran cotizaciones participantes.',
      args: [],
    );
  }

  /// `No hay solicitudes directas`
  String get noDirectArtistRequestsFoundTitle {
    return Intl.message(
      'No hay solicitudes directas',
      name: 'noDirectArtistRequestsFoundTitle',
      desc:
          'Título mostrado cuando no se encuentran solicitudes directas para el artista.',
      args: [],
    );
  }

  /// `No tienes solicitudes directas en este momento`
  String get noDirectArtistRequestsFoundBody {
    return Intl.message(
      'No tienes solicitudes directas en este momento',
      name: 'noDirectArtistRequestsFoundBody',
      desc:
          'Mensaje mostrado cuando no se encuentran solicitudes directas para el artista.',
      args: [],
    );
  }

  /// `No hay cotizaciones directas`
  String get noDirectCustomerQuotationsFoundTitle {
    return Intl.message(
      'No hay cotizaciones directas',
      name: 'noDirectCustomerQuotationsFoundTitle',
      desc:
          'Título mostrado cuando no se encuentran cotizaciones directas para el cliente.',
      args: [],
    );
  }

  /// `No tienes cotizaciones directas en este momento`
  String get noDirectCustomerQuotationsFoundBody {
    return Intl.message(
      'No tienes cotizaciones directas en este momento',
      name: 'noDirectCustomerQuotationsFoundBody',
      desc:
          'Mensaje mostrado cuando no se encuentran cotizaciones directas para el cliente.',
      args: [],
    );
  }

  /// `Por favor activa el GPS`
  String get pleaseEnableGps {
    return Intl.message(
      'Por favor activa el GPS',
      name: 'pleaseEnableGps',
      desc: 'Mensaje solicitando al usuario que active el GPS.',
      args: [],
    );
  }

  /// `La descripción debe tener al menos {length} caracteres`
  String minDescriptionLengthRequired(Object length) {
    return Intl.message(
      'La descripción debe tener al menos $length caracteres',
      name: 'minDescriptionLengthRequired',
      desc:
          'Mensaje de error cuando la descripción no cumple con la longitud mínima requerida.',
      args: [length],
    );
  }

  /// `Elegir diseño generado`
  String get chooseGeneratedDesign {
    return Intl.message(
      'Elegir diseño generado',
      name: 'chooseGeneratedDesign',
      desc: 'Botón para elegir un diseño generado.',
      args: [],
    );
  }

  /// `Generar nuevo diseño`
  String get generateNewDesign {
    return Intl.message(
      'Generar nuevo diseño',
      name: 'generateNewDesign',
      desc: 'Botón para generar un nuevo diseño.',
      args: [],
    );
  }

  /// `Presupuesto estimado (opcional)`
  String get estimatedBudgetOptional {
    return Intl.message(
      'Presupuesto estimado (opcional)',
      name: 'estimatedBudgetOptional',
      desc:
          'Etiqueta para el campo de presupuesto estimado, marcado como opcional.',
      args: [],
    );
  }

  /// `Presupuesto de referencia`
  String get referenceBudgetHint {
    return Intl.message(
      'Presupuesto de referencia',
      name: 'referenceBudgetHint',
      desc: 'Texto de ayuda para el campo de presupuesto de referencia.',
      args: [],
    );
  }

  /// `Sin límite de distancia`
  String get noDistanceLimit {
    return Intl.message(
      'Sin límite de distancia',
      name: 'noDistanceLimit',
      desc: 'Texto mostrado cuando no hay límite de distancia establecido.',
      args: [],
    );
  }

  /// `Distancia máxima: {distance} km`
  String maxDistance(Object distance) {
    return Intl.message(
      'Distancia máxima: $distance km',
      name: 'maxDistance',
      desc: 'Texto que muestra la distancia máxima establecida.',
      args: [distance],
    );
  }

  /// `En progreso`
  String get inProgress {
    return Intl.message(
      'En progreso',
      name: 'inProgress',
      desc: 'Estado de una cita en progreso.',
      args: [],
    );
  }

  /// `Reprogramada`
  String get rescheduled {
    return Intl.message(
      'Reprogramada',
      name: 'rescheduled',
      desc: 'Estado de una cita reprogramada.',
      args: [],
    );
  }

  /// `Esperando fotos`
  String get waitingForPhotos {
    return Intl.message(
      'Esperando fotos',
      name: 'waitingForPhotos',
      desc: 'Estado de una cita esperando fotos.',
      args: [],
    );
  }

  /// `Esperando reseña`
  String get waitingForReview {
    return Intl.message(
      'Esperando reseña',
      name: 'waitingForReview',
      desc: 'Estado de una cita esperando reseña.',
      args: [],
    );
  }

  /// `Reseñada`
  String get reviewed {
    return Intl.message(
      'Reseñada',
      name: 'reviewed',
      desc: 'Estado de una cita reseñada.',
      args: [],
    );
  }

  /// `Cancelada`
  String get canceled {
    return Intl.message(
      'Cancelada',
      name: 'canceled',
      desc: 'Estado de una cita cancelada.',
      args: [],
    );
  }

  /// `Solicitud de cotización para el diseño`
  String get requestQuotationForDesign {
    return Intl.message(
      'Solicitud de cotización para el diseño',
      name: 'requestQuotationForDesign',
      desc:
          'Título para una solicitud de cotización para un diseño específico.',
      args: [],
    );
  }

  /// `Más información sobre tamaños, precios y disponibilidad`
  String get moreInfoAboutSizesPricesAvailability {
    return Intl.message(
      'Más información sobre tamaños, precios y disponibilidad',
      name: 'moreInfoAboutSizesPricesAvailability',
      desc:
          'Texto solicitando más información sobre tamaños, precios y disponibilidad.',
      args: [],
    );
  }

  /// `con descripción`
  String get withDescription {
    return Intl.message(
      'con descripción',
      name: 'withDescription',
      desc: 'Texto que indica que un elemento tiene una descripción.',
      args: [],
    );
  }

  /// `Cotización para plantilla ID`
  String get quotationForStencilId {
    return Intl.message(
      'Cotización para plantilla ID',
      name: 'quotationForStencilId',
      desc:
          'Etiqueta para una cotización relacionada con una plantilla específica.',
      args: [],
    );
  }

  /// `Buscando...`
  String get searching {
    return Intl.message(
      'Buscando...',
      name: 'searching',
      desc: 'Texto mostrado cuando una búsqueda está en progreso.',
      args: [],
    );
  }

  /// `Ingresa término de búsqueda o selecciona etiquetas`
  String get enterSearchTermOrSelectTags {
    return Intl.message(
      'Ingresa término de búsqueda o selecciona etiquetas',
      name: 'enterSearchTermOrSelectTags',
      desc: 'Texto de ayuda para el campo de búsqueda.',
      args: [],
    );
  }

  /// `No se encontraron resultados`
  String get noResultsFound {
    return Intl.message(
      'No se encontraron resultados',
      name: 'noResultsFound',
      desc: 'Mensaje mostrado cuando no se encuentran resultados de búsqueda.',
      args: [],
    );
  }

  /// `Intenta con diferentes términos de búsqueda o filtros`
  String get tryDifferentSearchOrFilters {
    return Intl.message(
      'Intenta con diferentes términos de búsqueda o filtros',
      name: 'tryDifferentSearchOrFilters',
      desc: 'Sugerencia cuando no se encuentran resultados de búsqueda.',
      args: [],
    );
  }

  /// `Inspiración`
  String get inspiration {
    return Intl.message(
      'Inspiración',
      name: 'inspiration',
      desc: 'Etiqueta para la sección de inspiración.',
      args: [],
    );
  }

  /// `Buscar tatuajes, plantillas o etiquetas`
  String get searchTattoosStencilsOrTags {
    return Intl.message(
      'Buscar tatuajes, plantillas o etiquetas',
      name: 'searchTattoosStencilsOrTags',
      desc:
          'Texto de marcador de posición para buscar tatuajes, plantillas o etiquetas.',
      args: [],
    );
  }

  /// `Limpiar búsqueda`
  String get clearSearch {
    return Intl.message(
      'Limpiar búsqueda',
      name: 'clearSearch',
      desc: 'Etiqueta de botón para limpiar la búsqueda.',
      args: [],
    );
  }

  /// `Buscar`
  String get search {
    return Intl.message(
      'Buscar',
      name: 'search',
      desc: 'Etiqueta de botón para acción de búsqueda.',
      args: [],
    );
  }

  /// `Etiquetas sugeridas`
  String get suggestedTags {
    return Intl.message(
      'Etiquetas sugeridas',
      name: 'suggestedTags',
      desc: 'Etiqueta para las etiquetas sugeridas.',
      args: [],
    );
  }

  /// `Solo se encontraron plantillas`
  String get onlyStencilsFound {
    return Intl.message(
      'Solo se encontraron plantillas',
      name: 'onlyStencilsFound',
      desc:
          'Mensaje mostrado cuando solo se encuentran plantillas en los resultados de búsqueda.',
      args: [],
    );
  }

  /// `Solo se encontraron trabajos`
  String get onlyWorksFound {
    return Intl.message(
      'Solo se encontraron trabajos',
      name: 'onlyWorksFound',
      desc:
          'Mensaje mostrado cuando solo se encuentran trabajos en los resultados de búsqueda.',
      args: [],
    );
  }

  /// `Mostrar solo resultados disponibles`
  String get showOnlyAvailableResults {
    return Intl.message(
      'Mostrar solo resultados disponibles',
      name: 'showOnlyAvailableResults',
      desc: 'Opción para mostrar solo resultados disponibles.',
      args: [],
    );
  }

  /// `Todos`
  String get all {
    return Intl.message(
      'Todos',
      name: 'all',
      desc: 'Etiqueta para mostrar todos los resultados.',
      args: [],
    );
  }

  /// `Crea tu propio diseño`
  String get createYourOwnDesign {
    return Intl.message(
      'Crea tu propio diseño',
      name: 'createYourOwnDesign',
      desc: 'Título para la sección de creación de diseño propio.',
      args: [],
    );
  }

  /// `Genera diseños de tatuajes con IA`
  String get generateTattooDesignsWithAI {
    return Intl.message(
      'Genera diseños de tatuajes con IA',
      name: 'generateTattooDesignsWithAI',
      desc:
          'Descripción para generar diseños de tatuajes con inteligencia artificial.',
      args: [],
    );
  }

  /// `Explora inspiración`
  String get exploreInspiration {
    return Intl.message(
      'Explora inspiración',
      name: 'exploreInspiration',
      desc: 'Título para la sección de exploración de inspiración.',
      args: [],
    );
  }

  /// `Encuentra diseños y tatuajes hechos por artistas`
  String get findDesignsAndTattoosMadeByArtists {
    return Intl.message(
      'Encuentra diseños y tatuajes hechos por artistas',
      name: 'findDesignsAndTattoosMadeByArtists',
      desc:
          'Descripción para encontrar diseños y tatuajes hechos por artistas.',
      args: [],
    );
  }

  /// `Buscar inspiración`
  String get searchInspiration {
    return Intl.message(
      'Buscar inspiración',
      name: 'searchInspiration',
      desc: 'Etiqueta de botón para buscar inspiración.',
      args: [],
    );
  }

  /// `Busca inspiración para tu próximo tatuaje`
  String get searchInspirationForYourNextTattoo {
    return Intl.message(
      'Busca inspiración para tu próximo tatuaje',
      name: 'searchInspirationForYourNextTattoo',
      desc: 'Descripción para buscar inspiración para tatuajes.',
      args: [],
    );
  }

  /// `Explora diseños y trabajos de artistas`
  String get exploreDesignsAndArtistWorks {
    return Intl.message(
      'Explora diseños y trabajos de artistas',
      name: 'exploreDesignsAndArtistWorks',
      desc: 'Descripción para explorar diseños y trabajos de artistas.',
      args: [],
    );
  }

  /// `Comenzar a buscar`
  String get startSearching {
    return Intl.message(
      'Comenzar a buscar',
      name: 'startSearching',
      desc: 'Etiqueta de botón para comenzar a buscar.',
      args: [],
    );
  }

  /// `Tatuajes`
  String get tattoos {
    return Intl.message(
      'Tatuajes',
      name: 'tattoos',
      desc: 'Etiqueta para la categoría de tatuajes.',
      args: [],
    );
  }

  /// `No se encontraron tatuajes con los criterios actuales`
  String get noTattoosFoundWithCurrentCriteria {
    return Intl.message(
      'No se encontraron tatuajes con los criterios actuales',
      name: 'noTattoosFoundWithCurrentCriteria',
      desc:
          'Mensaje mostrado cuando no se encuentran tatuajes que coincidan con los criterios de búsqueda.',
      args: [],
    );
  }

  /// `No se encontraron plantillas con los criterios actuales`
  String get noStencilsFoundWithCurrentCriteria {
    return Intl.message(
      'No se encontraron plantillas con los criterios actuales',
      name: 'noStencilsFoundWithCurrentCriteria',
      desc:
          'Mensaje mostrado cuando no se encuentran plantillas que coincidan con los criterios de búsqueda.',
      args: [],
    );
  }

  /// `ID`
  String get id {
    return Intl.message(
      'ID',
      name: 'id',
      desc: 'Etiqueta para el ID de un elemento.',
      args: [],
    );
  }

  /// `Error al cargar los detalles de la cotización`
  String get errorLoadingQuotationDetails {
    return Intl.message(
      'Error al cargar los detalles de la cotización',
      name: 'errorLoadingQuotationDetails',
      desc:
          'Mensaje de error mostrado cuando no se pueden cargar los detalles de la cotización.',
      args: [],
    );
  }

  /// `No se encontraron solicitudes`
  String get noApplicationsFound {
    return Intl.message(
      'No se encontraron solicitudes',
      name: 'noApplicationsFound',
      desc: 'Mensaje mostrado cuando no se encuentran solicitudes.',
      args: [],
    );
  }

  /// `Oferta enviada`
  String get sentOffer {
    return Intl.message(
      'Oferta enviada',
      name: 'sentOffer',
      desc: 'Etiqueta para una oferta que ha sido enviada.',
      args: [],
    );
  }

  /// `No se encontraron horarios disponibles`
  String get noAvailableTimeSlotsFound {
    return Intl.message(
      'No se encontraron horarios disponibles',
      name: 'noAvailableTimeSlotsFound',
      desc: 'Mensaje mostrado cuando no se encuentran horarios disponibles.',
      args: [],
    );
  }

  /// `Intentamos encontrar horarios a lo largo de varios días pero no pudimos encontrar ningún tiempo disponible`
  String
      get weTriedToFindSlotsAcrossMultipleDaysButCouldNotFindAnyAvailableTimes {
    return Intl.message(
      'Intentamos encontrar horarios a lo largo de varios días pero no pudimos encontrar ningún tiempo disponible',
      name:
          'weTriedToFindSlotsAcrossMultipleDaysButCouldNotFindAnyAvailableTimes',
      desc:
          'Mensaje que explica que no se encontraron horarios disponibles en varios días.',
      args: [],
    );
  }

  /// `Intenta configurar tus horas de trabajo en la configuración de agenda o prueba una duración de cita más corta`
  String
      get trySettingUpYourWorkingHoursInAgendaSettingsOrTryAShorterAppointmentDuration {
    return Intl.message(
      'Intenta configurar tus horas de trabajo en la configuración de agenda o prueba una duración de cita más corta',
      name:
          'trySettingUpYourWorkingHoursInAgendaSettingsOrTryAShorterAppointmentDuration',
      desc: 'Sugerencia para cuando no se encuentran horarios disponibles.',
      args: [],
    );
  }

  /// `Error al cargar los horarios disponibles`
  String get errorLoadingAvailableTimeSlots {
    return Intl.message(
      'Error al cargar los horarios disponibles',
      name: 'errorLoadingAvailableTimeSlots',
      desc:
          'Mensaje de error mostrado cuando no se pueden cargar los horarios disponibles.',
      args: [],
    );
  }

  /// `Mejor`
  String get best {
    return Intl.message(
      'Mejor',
      name: 'best',
      desc: 'Etiqueta que indica la mejor opción o franja horaria.',
      args: [],
    );
  }

  /// `No se pueden abrir los detalles en este momento. Inténtalo de nuevo más tarde.`
  String get cannotOpenDetailsRightNowTryAgainLater {
    return Intl.message(
      'No se pueden abrir los detalles en este momento. Inténtalo de nuevo más tarde.',
      name: 'cannotOpenDetailsRightNowTryAgainLater',
      desc: 'Mensaje de error mostrado cuando no se pueden abrir los detalles.',
      args: [],
    );
  }

  /// `Error al cargar las cotizaciones abiertas`
  String get errorLoadingOpenQuotations {
    return Intl.message(
      'Error al cargar las cotizaciones abiertas',
      name: 'errorLoadingOpenQuotations',
      desc:
          'Mensaje de error mostrado cuando no se pueden cargar las cotizaciones abiertas.',
      args: [],
    );
  }

  /// `Error al cargar las cotizaciones abiertas: {message}`
  String errorLoadingOpenQuotationsWithMessage(String message) {
    return Intl.message(
      'Error al cargar las cotizaciones abiertas: $message',
      name: 'errorLoadingOpenQuotationsWithMessage',
      desc:
          'Mensaje de error con detalles cuando no se pueden cargar las cotizaciones abiertas.',
      args: [message],
    );
  }

  /// `Hora de inicio`
  String get startHour {
    return Intl.message(
      'Hora de inicio',
      name: 'startHour',
      desc: 'Etiqueta para la hora de inicio del horario de trabajo.',
      args: [],
    );
  }

  /// `Hora de fin`
  String get endHour {
    return Intl.message(
      'Hora de fin',
      name: 'endHour',
      desc: 'Etiqueta para la hora de fin del horario de trabajo.',
      args: [],
    );
  }

  /// `Días laborables`
  String get workingDays {
    return Intl.message(
      'Días laborables',
      name: 'workingDays',
      desc:
          'Título para la sección de días laborables en la configuración de agenda.',
      args: [],
    );
  }

  /// `Lunes`
  String get monday {
    return Intl.message(
      'Lunes',
      name: 'monday',
      desc: 'Nombre del día de la semana: lunes.',
      args: [],
    );
  }

  /// `Martes`
  String get tuesday {
    return Intl.message(
      'Martes',
      name: 'tuesday',
      desc: 'Nombre del día de la semana: martes.',
      args: [],
    );
  }

  /// `Miércoles`
  String get wednesday {
    return Intl.message(
      'Miércoles',
      name: 'wednesday',
      desc: 'Nombre del día de la semana: miércoles.',
      args: [],
    );
  }

  /// `Jueves`
  String get thursday {
    return Intl.message(
      'Jueves',
      name: 'thursday',
      desc: 'Nombre del día de la semana: jueves.',
      args: [],
    );
  }

  /// `Viernes`
  String get friday {
    return Intl.message(
      'Viernes',
      name: 'friday',
      desc: 'Nombre del día de la semana: viernes.',
      args: [],
    );
  }

  /// `Sábado`
  String get saturday {
    return Intl.message(
      'Sábado',
      name: 'saturday',
      desc: 'Nombre del día de la semana: sábado.',
      args: [],
    );
  }

  /// `Domingo`
  String get sunday {
    return Intl.message(
      'Domingo',
      name: 'sunday',
      desc: 'Nombre del día de la semana: domingo.',
      args: [],
    );
  }

  /// `Explorar`
  String get explore {
    return Intl.message(
      'Explorar',
      name: 'explore',
      desc: 'Label for the explore tab in the customer app.',
      args: [],
    );
  }

  /// `Mis Citas`
  String get myAppointments {
    return Intl.message(
      'Mis Citas',
      name: 'myAppointments',
      desc: 'Label for the appointments tab in the customer app.',
      args: [],
    );
  }

  /// `Públicas`
  String get public {
    return Intl.message(
      'Públicas',
      name: 'public',
      desc: 'Label for the public tab in quotations view.',
      args: [],
    );
  }

  /// `Directas`
  String get direct {
    return Intl.message(
      'Directas',
      name: 'direct',
      desc: 'Label for the direct tab in quotations view.',
      args: [],
    );
  }

  /// `minuto`
  String get minute {
    return Intl.message(
      'minuto',
      name: 'minute',
      desc: 'Singular form of minute used in duration formatting.',
      args: [],
    );
  }

  /// `Esta función estará disponible pronto`
  String get thisFeatureWillBeAvailableSoon {
    return Intl.message(
      'Esta función estará disponible pronto',
      name: 'thisFeatureWillBeAvailableSoon',
      desc: 'Message shown when a feature is not yet implemented.',
      args: [],
    );
  }

  /// `Enviar mensaje en la app`
  String get sendMessageInApp {
    return Intl.message(
      'Enviar mensaje en la app',
      name: 'sendMessageInApp',
      desc: 'Option to send a message within the application.',
      args: [],
    );
  }

  /// `Solicitar Cambio`
  String get requestChange {
    return Intl.message(
      'Solicitar Cambio',
      name: 'requestChange',
      desc: 'Button text for requesting a change to an appointment.',
      args: [],
    );
  }

  /// `Desconocido`
  String get unknown {
    return Intl.message(
      'Desconocido',
      name: 'unknown',
      desc: 'Default text for unknown status.',
      args: [],
    );
  }

  /// `Confirmado`
  String get confirmed {
    return Intl.message(
      'Confirmado',
      name: 'confirmed',
      desc: 'Status label for confirmed appointments.',
      args: [],
    );
  }

  /// `No se pudo cargar la imagen`
  String get couldNotLoadImage {
    return Intl.message(
      'No se pudo cargar la imagen',
      name: 'couldNotLoadImage',
      desc: 'Message shown when an image fails to load.',
      args: [],
    );
  }

  /// `Enero`
  String get january {
    return Intl.message(
      'Enero',
      name: 'january',
      desc: 'Nombre del mes: enero.',
      args: [],
    );
  }

  /// `Febrero`
  String get february {
    return Intl.message(
      'Febrero',
      name: 'february',
      desc: 'Nombre del mes: febrero.',
      args: [],
    );
  }

  /// `Marzo`
  String get march {
    return Intl.message(
      'Marzo',
      name: 'march',
      desc: 'Nombre del mes: marzo.',
      args: [],
    );
  }

  /// `Abril`
  String get april {
    return Intl.message(
      'Abril',
      name: 'april',
      desc: 'Nombre del mes: abril.',
      args: [],
    );
  }

  /// `Mayo`
  String get may {
    return Intl.message(
      'Mayo',
      name: 'may',
      desc: 'Nombre del mes: mayo.',
      args: [],
    );
  }

  /// `Junio`
  String get june {
    return Intl.message(
      'Junio',
      name: 'june',
      desc: 'Nombre del mes: junio.',
      args: [],
    );
  }

  /// `Julio`
  String get july {
    return Intl.message(
      'Julio',
      name: 'july',
      desc: 'Nombre del mes: julio.',
      args: [],
    );
  }

  /// `Agosto`
  String get august {
    return Intl.message(
      'Agosto',
      name: 'august',
      desc: 'Nombre del mes: agosto.',
      args: [],
    );
  }

  /// `Septiembre`
  String get september {
    return Intl.message(
      'Septiembre',
      name: 'september',
      desc: 'Nombre del mes: septiembre.',
      args: [],
    );
  }

  /// `Octubre`
  String get october {
    return Intl.message(
      'Octubre',
      name: 'october',
      desc: 'Nombre del mes: octubre.',
      args: [],
    );
  }

  /// `Noviembre`
  String get november {
    return Intl.message(
      'Noviembre',
      name: 'november',
      desc: 'Nombre del mes: noviembre.',
      args: [],
    );
  }

  /// `Diciembre`
  String get december {
    return Intl.message(
      'Diciembre',
      name: 'december',
      desc: 'Nombre del mes: diciembre.',
      args: [],
    );
  }

  /// `Ver Tatuajes`
  String get viewTattoos {
    return Intl.message(
      'Ver Tatuajes',
      name: 'viewTattoos',
      desc: 'Texto del botón para ver trabajos de tatuajes en la galería.',
      args: [],
    );
  }

  /// `Ver Plantillas`
  String get viewStencils {
    return Intl.message(
      'Ver Plantillas',
      name: 'viewStencils',
      desc: 'Texto del botón para ver diseños de plantillas en la galería.',
      args: [],
    );
  }

  /// `Volver a Búsqueda`
  String get backToSearch {
    return Intl.message(
      'Volver a Búsqueda',
      name: 'backToSearch',
      desc: 'Texto del botón para regresar a la pantalla de búsqueda.',
      args: [],
    );
  }

  /// `Cotizar Este Diseño`
  String get quoteThisDesign {
    return Intl.message(
      'Cotizar Este Diseño',
      name: 'quoteThisDesign',
      desc:
          'Texto del botón para solicitar una cotización para un diseño de plantilla.',
      args: [],
    );
  }

  /// `Desliza`
  String get swipe {
    return Intl.message(
      'Desliza',
      name: 'swipe',
      desc:
          'Texto de instrucción para que los usuarios deslicen el contenido en el visor inmersivo.',
      args: [],
    );
  }

  /// `Volver a Plantillas`
  String get backToStencils {
    return Intl.message(
      'Volver a Plantillas',
      name: 'backToStencils',
      desc: 'Texto del botón para regresar a la pantalla de plantillas.',
      args: [],
    );
  }

  /// `Volver a Tatuajes`
  String get backToTattoos {
    return Intl.message(
      'Volver a Tatuajes',
      name: 'backToTattoos',
      desc: 'Texto del botón para regresar a la pantalla de tatuajes.',
      args: [],
    );
  }

  /// `Sin descripción`
  String get noDescription {
    return Intl.message(
      'Sin descripción',
      name: 'noDescription',
      desc: 'Texto que indica que no hay descripción disponible.',
      args: [],
    );
  }

  /// `Error al cargar detalles del evento: {message}`
  String errorLoadingEventDetails(String message) {
    return Intl.message(
      'Error al cargar detalles del evento: $message',
      name: 'errorLoadingEventDetails',
      desc: 'Mensaje de error al cargar los detalles de un evento.',
      args: [message],
    );
  }

  /// `¿Estás seguro de que deseas editar este evento?`
  String get editEventWarning {
    return Intl.message(
      '¿Estás seguro de que deseas editar este evento?',
      name: 'editEventWarning',
      desc: 'Mensaje de advertencia al editar un evento.',
      args: [],
    );
  }

  /// `Presupuesto`
  String get budget {
    return Intl.message(
      'Presupuesto',
      name: 'budget',
      desc: 'Etiqueta para el presupuesto de una cotización.',
      args: [],
    );
  }

  /// `Diseño Propuesto`
  String get proposedDesign {
    return Intl.message(
      'Diseño Propuesto',
      name: 'proposedDesign',
      desc: 'Título para la sección de diseño propuesto en una cotización.',
      args: [],
    );
  }

  /// `Razón de Cancelación del Sistema`
  String get systemCancellationReason {
    return Intl.message(
      'Razón de Cancelación del Sistema',
      name: 'systemCancellationReason',
      desc: 'Título para la razón de cancelación automática del sistema.',
      args: [],
    );
  }

  /// `Ofertas`
  String get offers {
    return Intl.message(
      'Ofertas',
      name: 'offers',
      desc: 'Título para la sección de ofertas en una cotización.',
      args: [],
    );
  }

  /// `Demasiado costoso`
  String get tooExpensive {
    return Intl.message(
      'Demasiado costoso',
      name: 'tooExpensive',
      desc: 'Razón de rechazo: el precio es demasiado alto.',
      args: [],
    );
  }

  /// `No es lo que quería`
  String get notWhatIWanted {
    return Intl.message(
      'No es lo que quería',
      name: 'notWhatIWanted',
      desc: 'Razón de rechazo: el diseño no cumple con las expectativas.',
      args: [],
    );
  }

  /// `Cambié de opinión`
  String get changedMyMind {
    return Intl.message(
      'Cambié de opinión',
      name: 'changedMyMind',
      desc: 'Razón de rechazo: el cliente cambió de opinión.',
      args: [],
    );
  }

  /// `Encontré otro artista`
  String get foundAnotherArtist {
    return Intl.message(
      'Encontré otro artista',
      name: 'foundAnotherArtist',
      desc: 'Razón de rechazo: el cliente eligió otro artista.',
      args: [],
    );
  }

  /// `Conflicto de horarios`
  String get schedulingConflict {
    return Intl.message(
      'Conflicto de horarios',
      name: 'schedulingConflict',
      desc: 'Razón de rechazo del artista: conflicto de horarios.',
      args: [],
    );
  }

  /// `Desacuerdo artístico`
  String get artisticDisagreement {
    return Intl.message(
      'Desacuerdo artístico',
      name: 'artisticDisagreement',
      desc: 'Razón de rechazo del artista: desacuerdo sobre el diseño.',
      args: [],
    );
  }

  /// `Detalles insuficientes`
  String get insufficientDetails {
    return Intl.message(
      'Detalles insuficientes',
      name: 'insufficientDetails',
      desc: 'Razón de rechazo del artista: falta de información.',
      args: [],
    );
  }

  /// `Fuera de mi especialidad`
  String get beyondExpertise {
    return Intl.message(
      'Fuera de mi especialidad',
      name: 'beyondExpertise',
      desc:
          'Razón de rechazo del artista: el trabajo está fuera de su área de experiencia.',
      args: [],
    );
  }

  /// `No se presentó`
  String get notAttended {
    return Intl.message(
      'No se presentó',
      name: 'notAttended',
      desc: 'Razón de cancelación del sistema: el cliente no se presentó.',
      args: [],
    );
  }

  /// `Tiempo de espera agotado`
  String get systemTimeout {
    return Intl.message(
      'Tiempo de espera agotado',
      name: 'systemTimeout',
      desc: 'Razón de cancelación del sistema: se agotó el tiempo de espera.',
      args: [],
    );
  }

  /// `Regresar a la galería`
  String get backToGallery {
    return Intl.message(
      'Regresar a la galería',
      name: 'backToGallery',
      desc: 'Texto del botón para regresar a la pantalla de galería.',
      args: [],
    );
  }

  /// `Estamos procesando tu solicitud...`
  String get processingRequest {
    return Intl.message(
      'Estamos procesando tu solicitud...',
      name: 'processingRequest',
      desc: 'Texto mostrado cuando una solicitud está siendo procesada.',
      args: [],
    );
  }

  /// `Cotización creada exitosamente`
  String get quotationCreatedSuccessfullyTitle {
    return Intl.message(
      'Cotización creada exitosamente',
      name: 'quotationCreatedSuccessfullyTitle',
      desc: 'Título mostrado cuando una cotización se crea exitosamente.',
      args: [],
    );
  }

  /// `Tu cotización ha sido creada exitosamente. Te notificaremos cuando sea revisada.`
  String get quotationCreatedSuccessfullyDescription {
    return Intl.message(
      'Tu cotización ha sido creada exitosamente. Te notificaremos cuando sea revisada.',
      name: 'quotationCreatedSuccessfullyDescription',
      desc: 'Descripción mostrada cuando una cotización se crea exitosamente.',
      args: [],
    );
  }

  /// `Cotización`
  String get quotation {
    return Intl.message(
      'Cotización',
      name: 'quotation',
      desc: 'Etiqueta para las cotizaciones.',
      args: [],
    );
  }

  /// `{count, plural, =0{No artistas encontrados} =1{1 artista encontrado} other{{count} artistas encontrados}}`
  String artistFound(num count) {
    return Intl.plural(
      count,
      zero: 'No artistas encontrados',
      one: '1 artista encontrado',
      other: '$count artistas encontrados',
      name: 'artistFound',
      desc:
          'Texto que muestra el número de artistas encontrados en los resultados de búsqueda.',
      args: [count],
    );
  }

  /// `Buscar artistas, estilos o ubicaciones...`
  String get searchArtistPlaceholder {
    return Intl.message(
      'Buscar artistas, estilos o ubicaciones...',
      name: 'searchArtistPlaceholder',
      desc: 'Placeholder text for the search bar in the artists search screen.',
      args: [],
    );
  }

  /// `Limpiar`
  String get clear {
    return Intl.message(
      'Limpiar',
      name: 'clear',
      desc: 'Button text to clear the search filter.',
      args: [],
    );
  }

  /// `Rating mínimo: {rating}`
  String minimumRating(num rating) {
    final NumberFormat ratingNumberFormat =
        NumberFormat.decimalPattern(Intl.getCurrentLocale());
    final String ratingString = ratingNumberFormat.format(rating);

    return Intl.message(
      'Rating mínimo: $ratingString',
      name: 'minimumRating',
      desc: 'Text showing the minimum rating for the search results.',
      args: [ratingString],
    );
  }

  /// `metros`
  String get meters {
    return Intl.message(
      'metros',
      name: 'meters',
      desc: 'Unidad de medida de distancia.',
      args: [],
    );
  }

  /// `Artista Destacado`
  String get featuredArtist {
    return Intl.message(
      'Artista Destacado',
      name: 'featuredArtist',
      desc: 'Etiqueta para los artistas destacados.',
      args: [],
    );
  }

  /// `Compartir Perfil del Artista`
  String get shareArtistProfile {
    return Intl.message(
      'Compartir Perfil del Artista',
      name: 'shareArtistProfile',
      desc: 'Texto para el botón de compartir perfil del artista.',
      args: [],
    );
  }

  /// `Solicitar Cotización`
  String get requestQuote {
    return Intl.message(
      'Solicitar Cotización',
      name: 'requestQuote',
      desc: 'Texto para el botón de solicitar cotización.',
      args: [],
    );
  }

  /// `Ver Más`
  String get seeMore {
    return Intl.message(
      'Ver Más',
      name: 'seeMore',
      desc: 'Texto para expandir contenido.',
      args: [],
    );
  }

  /// `Ver Menos`
  String get seeLess {
    return Intl.message(
      'Ver Menos',
      name: 'seeLess',
      desc: 'Texto para colapsar contenido.',
      args: [],
    );
  }

  /// `{count, plural, =0{Sin seguidores} =1{1 seguidor} other{{count} seguidores}}`
  String follower(num count) {
    return Intl.plural(
      count,
      zero: 'Sin seguidores',
      one: '1 seguidor',
      other: '$count seguidores',
      name: 'follower',
      desc: 'Texto que muestra el número de seguidores.',
      args: [count],
    );
  }

  /// `Ver Reseñas`
  String get seeReviews {
    return Intl.message(
      'Ver Reseñas',
      name: 'seeReviews',
      desc: 'Texto para el botón de ver reseñas.',
      args: [],
    );
  }

  /// `Trabajos Destacados`
  String get featuredWorks {
    return Intl.message(
      'Trabajos Destacados',
      name: 'featuredWorks',
      desc: 'Título para la sección de trabajos destacados.',
      args: [],
    );
  }

  /// `Portafolio`
  String get portfolio {
    return Intl.message(
      'Portafolio',
      name: 'portfolio',
      desc: 'Título para la sección de portafolio.',
      args: [],
    );
  }

  /// `Aún no hay trabajos compartidos`
  String get noWorksShared {
    return Intl.message(
      'Aún no hay trabajos compartidos',
      name: 'noWorksShared',
      desc: 'Mensaje mostrado cuando no hay trabajos compartidos.',
      args: [],
    );
  }

  /// `Información de Contacto`
  String get contactInfo {
    return Intl.message(
      'Información de Contacto',
      name: 'contactInfo',
      desc: 'Título para la sección de información de contacto.',
      args: [],
    );
  }

  /// `No hay información de contacto disponible`
  String get noContactInfo {
    return Intl.message(
      'No hay información de contacto disponible',
      name: 'noContactInfo',
      desc:
          'Mensaje mostrado cuando no hay información de contacto disponible.',
      args: [],
    );
  }

  /// `Copiado al portapapeles`
  String get copiedToClipboard {
    return Intl.message(
      'Copiado al portapapeles',
      name: 'copiedToClipboard',
      desc: 'Mensaje mostrado cuando el contenido se copia al portapapeles.',
      args: [],
    );
  }

  /// `Error al cargar el portafolio`
  String get errorLoadingPortfolio {
    return Intl.message(
      'Error al cargar el portafolio',
      name: 'errorLoadingPortfolio',
      desc: 'Mensaje de error mostrado cuando falla la carga del portafolio.',
      args: [],
    );
  }

  /// `No hay trabajos disponibles`
  String get noWorks {
    return Intl.message(
      'No hay trabajos disponibles',
      name: 'noWorks',
      desc: 'Mensaje mostrado cuando no hay trabajos disponibles.',
      args: [],
    );
  }

  /// `No hay plantillas disponibles`
  String get noStencils {
    return Intl.message(
      'No hay plantillas disponibles',
      name: 'noStencils',
      desc: 'Mensaje mostrado cuando no hay plantillas disponibles.',
      args: [],
    );
  }

  /// `Aún no hay plantillas compartidas`
  String get noStencilsShared {
    return Intl.message(
      'Aún no hay plantillas compartidas',
      name: 'noStencilsShared',
      desc: 'Mensaje mostrado cuando no hay plantillas compartidas.',
      args: [],
    );
  }

  /// `No hay portafolio disponible`
  String get noPortfolio {
    return Intl.message(
      'No hay portafolio disponible',
      name: 'noPortfolio',
      desc: 'Mensaje mostrado cuando no hay portafolio disponible.',
      args: [],
    );
  }

  /// `Aún no hay portafolio compartido`
  String get noPortfolioShared {
    return Intl.message(
      'Aún no hay portafolio compartido',
      name: 'noPortfolioShared',
      desc: 'Mensaje mostrado cuando no hay portafolio compartido.',
      args: [],
    );
  }

  /// `Error al cargar la imagen`
  String get errorLoadingImage {
    return Intl.message(
      'Error al cargar la imagen',
      name: 'errorLoadingImage',
      desc: 'Mensaje de error mostrado cuando falla la carga de la imagen.',
      args: [],
    );
  }

  /// `Aún no hay reseñas`
  String get noReviews {
    return Intl.message(
      'Aún no hay reseñas',
      name: 'noReviews',
      desc: 'Mensaje mostrado cuando no hay reseñas.',
      args: [],
    );
  }

  /// `reseñas`
  String get reviewsTotal {
    return Intl.message(
      'reseñas',
      name: 'reviewsTotal',
      desc: 'Texto para el número total de reseñas.',
      args: [],
    );
  }

  /// `de 5`
  String get of5 {
    return Intl.message(
      'de 5',
      name: 'of5',
      desc: 'Texto que muestra la calificación de 5.',
      args: [],
    );
  }

  /// `Seguir`
  String get follow {
    return Intl.message(
      'Seguir',
      name: 'follow',
      desc: 'Texto para el botón de seguir.',
      args: [],
    );
  }

  /// `Citas disponibles`
  String get appointmentsAvailable {
    return Intl.message(
      'Citas disponibles',
      name: 'appointmentsAvailable',
      desc: 'Texto que indica que hay citas disponibles.',
      args: [],
    );
  }

  /// `Cómo llegar`
  String get directions {
    return Intl.message(
      'Cómo llegar',
      name: 'directions',
      desc: 'Texto para el botón que muestra las direcciones.',
      args: [],
    );
  }

  /// `Agendar cita`
  String get bookAppointment {
    return Intl.message(
      'Agendar cita',
      name: 'bookAppointment',
      desc: 'Texto para el botón que permite agendar una cita.',
      args: [],
    );
  }

  /// `{count, plural, =0{No reseñas aun} =1{1 reseña} other{{count} reseñas}}`
  String totalReviews(num count) {
    return Intl.plural(
      count,
      zero: 'No reseñas aun',
      one: '1 reseña',
      other: '$count reseñas',
      name: 'totalReviews',
      desc: 'Texto para el número total de reseñas.',
      args: [count],
    );
  }

  /// `Nuevo`
  String get n {
    return Intl.message(
      'Nuevo',
      name: 'n',
      desc: 'Un nuevo elemento o mensaje.',
      args: [],
    );
  }

  /// `No hay aplicaciones de mapas disponibles`
  String get noMapsApplicationAvailable {
    return Intl.message(
      'No hay aplicaciones de mapas disponibles',
      name: 'noMapsApplicationAvailable',
      desc: 'Mensaje mostrado cuando no hay aplicaciones de mapas instaladas.',
      args: [],
    );
  }

  /// `Enviar correo`
  String get sendEmail {
    return Intl.message(
      'Enviar correo',
      name: 'sendEmail',
      desc: 'Texto para la opción de enviar correo electrónico.',
      args: [],
    );
  }

  /// `Llamar al artista`
  String get callArtist {
    return Intl.message(
      'Llamar al artista',
      name: 'callArtist',
      desc: 'Texto para la opción de llamar al artista.',
      args: [],
    );
  }

  /// `Chatear directamente con el artista`
  String get chatDirectlyWithArtist {
    return Intl.message(
      'Chatear directamente con el artista',
      name: 'chatDirectlyWithArtist',
      desc: 'Texto que describe la opción de chatear con el artista.',
      args: [],
    );
  }

  /// `La funcionalidad de reseñas estará disponible pronto`
  String get reviewFunctionalityComingSoon {
    return Intl.message(
      'La funcionalidad de reseñas estará disponible pronto',
      name: 'reviewFunctionalityComingSoon',
      desc:
          'Mensaje que indica que la funcionalidad de reseñas estará disponible próximamente.',
      args: [],
    );
  }

  /// `Dejar reseña`
  String get leaveReview {
    return Intl.message(
      'Dejar reseña',
      name: 'leaveReview',
      desc: 'Texto para el botón de dejar una reseña.',
      args: [],
    );
  }

  /// `Cita reagendada`
  String get appointmentRescheduled {
    return Intl.message(
      'Cita reagendada',
      name: 'appointmentRescheduled',
      desc: 'Mensaje que indica que la cita ha sido reagendada.',
      args: [],
    );
  }

  /// `Cita cancelada`
  String get appointmentCanceled {
    return Intl.message(
      'Cita cancelada',
      name: 'appointmentCanceled',
      desc: 'Mensaje que indica que la cita ha sido cancelada.',
      args: [],
    );
  }

  /// `Información adicional`
  String get additionalInformation {
    return Intl.message(
      'Información adicional',
      name: 'additionalInformation',
      desc: 'Texto para la sección de información adicional.',
      args: [],
    );
  }

  /// `Cargando detalles de la cita`
  String get loadingAppointmentDetails {
    return Intl.message(
      'Cargando detalles de la cita',
      name: 'loadingAppointmentDetails',
      desc: 'Mensaje mostrado mientras se cargan los detalles de la cita.',
      args: [],
    );
  }

  /// `Cita no encontrada`
  String get appointmentNotFound {
    return Intl.message(
      'Cita no encontrada',
      name: 'appointmentNotFound',
      desc: 'Mensaje mostrado cuando no se encuentra la cita.',
      args: [],
    );
  }

  /// `Confirmar evento`
  String get confirmEvent {
    return Intl.message(
      'Confirmar evento',
      name: 'confirmEvent',
      desc: 'Texto para la acción de confirmar un evento.',
      args: [],
    );
  }

  /// `¿Estás seguro que deseas confirmar este evento?`
  String get confirmEventMessage {
    return Intl.message(
      '¿Estás seguro que deseas confirmar este evento?',
      name: 'confirmEventMessage',
      desc: 'Mensaje de confirmación mostrado al confirmar un evento.',
      args: [],
    );
  }

  /// `Rechazar evento`
  String get rejectEvent {
    return Intl.message(
      'Rechazar evento',
      name: 'rejectEvent',
      desc: 'Texto para la acción de rechazar un evento.',
      args: [],
    );
  }

  /// `Continuar`
  String get continue_ {
    return Intl.message(
      'Continuar',
      name: 'continue_',
      desc: 'Texto para el botón de continuar.',
      args: [],
    );
  }

  /// `Reagendar`
  String get reschedule {
    return Intl.message(
      'Reagendar',
      name: 'reschedule',
      desc: 'Texto para la acción de reagendar un evento.',
      args: [],
    );
  }

  /// `Comentar`
  String get comment {
    return Intl.message(
      'Comentar',
      name: 'comment',
      desc: 'Texto para la acción de comentar un evento.',
      args: [],
    );
  }

  /// `Anónimo`
  String get anonymous {
    return Intl.message(
      'Anónimo',
      name: 'anonymous',
      desc: 'Texto para la opción de enviar una reseña de forma anónima.',
      args: [],
    );
  }

  /// `Agregar foto`
  String get addPhoto {
    return Intl.message(
      'Agregar foto',
      name: 'addPhoto',
      desc: 'Texto para el botón de agregar una foto.',
      args: [],
    );
  }

  /// `Galería`
  String get gallery {
    return Intl.message(
      'Galería',
      name: 'gallery',
      desc: 'Texto para el botón de acceder a la galería de fotos.',
      args: [],
    );
  }

  /// `Plantillas de Consentimiento`
  String get consentTemplates {
    return Intl.message(
      'Plantillas de Consentimiento',
      name: 'consentTemplates',
      desc: 'Título para la página de gestión de plantillas de consentimiento.',
      args: [],
    );
  }

  /// `Crear Nueva Plantilla`
  String get createNewTemplate {
    return Intl.message(
      'Crear Nueva Plantilla',
      name: 'createNewTemplate',
      desc: 'Texto para crear una nueva plantilla de consentimiento.',
      args: [],
    );
  }

  /// `Aún no se han creado plantillas de consentimiento`
  String get noConsentTemplates {
    return Intl.message(
      'Aún no se han creado plantillas de consentimiento',
      name: 'noConsentTemplates',
      desc: 'Mensaje mostrado cuando no existen plantillas de consentimiento.',
      args: [],
    );
  }

  /// `Crear tu primera plantilla`
  String get createFirstTemplate {
    return Intl.message(
      'Crear tu primera plantilla',
      name: 'createFirstTemplate',
      desc: 'Texto para crear la primera plantilla de consentimiento.',
      args: [],
    );
  }

  /// `Términos Generales`
  String get generalTerms {
    return Intl.message(
      'Términos Generales',
      name: 'generalTerms',
      desc: 'Etiqueta para el tipo de consentimiento de términos generales.',
      args: [],
    );
  }

  /// `Consentimiento de Tatuaje`
  String get tattooConsent {
    return Intl.message(
      'Consentimiento de Tatuaje',
      name: 'tattooConsent',
      desc: 'Etiqueta para el tipo de consentimiento de tatuaje.',
      args: [],
    );
  }

  /// `Liberación de Imagen`
  String get imageRelease {
    return Intl.message(
      'Liberación de Imagen',
      name: 'imageRelease',
      desc: 'Etiqueta para el tipo de consentimiento de liberación de imagen.',
      args: [],
    );
  }

  /// `Formularios de Consentimiento`
  String get consentForms {
    return Intl.message(
      'Formularios de Consentimiento',
      name: 'consentForms',
      desc: 'Título para la página de formularios de consentimiento.',
      args: [],
    );
  }

  /// `No se requieren formularios de consentimiento para esta cita`
  String get noConsentRequired {
    return Intl.message(
      'No se requieren formularios de consentimiento para esta cita',
      name: 'noConsentRequired',
      desc: 'Mensaje mostrado cuando no se requiere consentimiento.',
      args: [],
    );
  }

  /// `Todos los formularios de consentimiento completados`
  String get allConsentsCompleted {
    return Intl.message(
      'Todos los formularios de consentimiento completados',
      name: 'allConsentsCompleted',
      desc: 'Mensaje mostrado cuando todos los consentimientos están firmados.',
      args: [],
    );
  }

  /// `Progreso de Consentimiento`
  String get consentProgress {
    return Intl.message(
      'Progreso de Consentimiento',
      name: 'consentProgress',
      desc: 'Título para el progreso de completar consentimientos.',
      args: [],
    );
  }

  /// `Por favor revisa y completa este formulario de consentimiento`
  String get consentFormDescription {
    return Intl.message(
      'Por favor revisa y completa este formulario de consentimiento',
      name: 'consentFormDescription',
      desc: 'Descripción predeterminada para formularios de consentimiento.',
      args: [],
    );
  }

  /// `Firmar Consentimiento`
  String get signConsent {
    return Intl.message(
      'Firmar Consentimiento',
      name: 'signConsent',
      desc: 'Texto para firmar un formulario de consentimiento.',
      args: [],
    );
  }

  /// `Consentimientos`
  String get consents {
    return Intl.message(
      'Consentimientos',
      name: 'consents',
      desc: 'Etiqueta para la sección de consentimientos.',
      args: [],
    );
  }

  /// `Ver Consentimientos`
  String get viewConsents {
    return Intl.message(
      'Ver Consentimientos',
      name: 'viewConsents',
      desc: 'Texto para ver formularios de consentimiento.',
      args: [],
    );
  }

  /// `Firmar Consentimientos Requeridos`
  String get signRequiredConsents {
    return Intl.message(
      'Firmar Consentimientos Requeridos',
      name: 'signRequiredConsents',
      desc: 'Texto para firmar formularios de consentimiento requeridos.',
      args: [],
    );
  }

  /// `Consentimiento Requerido`
  String get consentRequired {
    return Intl.message(
      'Consentimiento Requerido',
      name: 'consentRequired',
      desc: 'Mensaje indicando que se requiere consentimiento.',
      args: [],
    );
  }

  /// `Por favor firma los formularios de consentimiento requeridos antes de continuar`
  String get pleaseSignConsents {
    return Intl.message(
      'Por favor firma los formularios de consentimiento requeridos antes de continuar',
      name: 'pleaseSignConsents',
      desc:
          'Mensaje pidiendo al usuario que firme los formularios de consentimiento.',
      args: [],
    );
  }

  /// `Firmado`
  String get signed {
    return Intl.message(
      'Firmado',
      name: 'signed',
      desc: 'Estado indicando que un formulario está firmado.',
      args: [],
    );
  }

  /// `Pendiente de Firma`
  String get pendingSignature {
    return Intl.message(
      'Pendiente de Firma',
      name: 'pendingSignature',
      desc: 'Estado indicando que un formulario necesita ser firmado.',
      args: [],
    );
  }

  /// `Este campo es requerido`
  String get fieldRequired {
    return Intl.message(
      'Este campo es requerido',
      name: 'fieldRequired',
      desc: 'Mensaje de validación para campos requeridos.',
      args: [],
    );
  }

  /// `Toca para firmar`
  String get tapToSign {
    return Intl.message(
      'Toca para firmar',
      name: 'tapToSign',
      desc: 'Instrucción para el campo de firma.',
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
