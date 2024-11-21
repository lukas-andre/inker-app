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

  /// `Finalizado`
  String get completed {
    return Intl.message(
      'Finalizado',
      name: 'completed',
      desc: 'Estado que indica que un evento ha finalizado.',
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
      desc: 'Etiqueta o botón para cancelar.',
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
      desc: 'Opción para seleccionar otro servicio.',
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

  /// `Estado`
  String get status {
    return Intl.message(
      'Estado',
      name: 'status',
      desc:
          'Campo o etiqueta para mostrar el estado de un evento o cotización.',
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

  /// `Sí`
  String get yes {
    return Intl.message(
      'Sí',
      name: 'yes',
      desc: 'Botón o etiqueta para confirmar algo con \'Sí\'.',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: 'Botón o etiqueta para denegar algo con \'No\'.',
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
      desc: 'Etiqueta o botón para indicar el día actual.',
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

  /// `Agendado`
  String get scheduled {
    return Intl.message(
      'Agendado',
      name: 'scheduled',
      desc: 'Estado que indica que algo ha sido agendado.',
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
      desc: 'Botón para guardar cambios o información.',
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

  /// `Rechazado por Ti`
  String get quotationStatusCustomerRejected {
    return Intl.message(
      'Rechazado por Ti',
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
