// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es_CL locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'es_CL';

  static String m0(count) =>
      "${Intl.plural(count, one: 'hace 1 día', other: 'hace ${count} días')}";

  static String m1(count) =>
      "${Intl.plural(count, one: 'hace 1 hora', other: 'hace ${count} horas')}";

  static String m2(count) =>
      "${Intl.plural(count, one: 'hace 1 minuto', other: 'hace ${count} minutos')}";

  static String m3(count) =>
      "${Intl.plural(count, one: 'hace 1 mes', other: 'hace ${count} meses')}";

  static String m4(count) =>
      "${Intl.plural(count, one: 'hace 1 año', other: 'hace ${count} años')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "accept": MessageLookupByLibrary.simpleMessage("Aceptar"),
        "acceptAppeal":
            MessageLookupByLibrary.simpleMessage("Aceptar Apelación"),
        "action": MessageLookupByLibrary.simpleMessage("Acción"),
        "additionalDetails":
            MessageLookupByLibrary.simpleMessage("Detalles Adicionales"),
        "and": MessageLookupByLibrary.simpleMessage("y"),
        "appointmentDate":
            MessageLookupByLibrary.simpleMessage("Fecha de la Cita"),
        "appointmentDateTime":
            MessageLookupByLibrary.simpleMessage("Fecha y Hora de la Cita"),
        "appointmentDuration":
            MessageLookupByLibrary.simpleMessage("Duración de la Cita"),
        "barber": MessageLookupByLibrary.simpleMessage("Barbería"),
        "between": MessageLookupByLibrary.simpleMessage("entre"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "cancelEvent": MessageLookupByLibrary.simpleMessage("Cancelar Evento"),
        "cancelQuotationConfirmationMessage":
            MessageLookupByLibrary.simpleMessage(
                "¿Estás seguro de que deseas cancelar esta cotización?"),
        "cancelQuotationConfirmationTitle":
            MessageLookupByLibrary.simpleMessage("Cancelar Cotización"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Cancelado"),
        "changeSelection":
            MessageLookupByLibrary.simpleMessage("Cambiar Selección"),
        "characters": MessageLookupByLibrary.simpleMessage("caracteres"),
        "completed": MessageLookupByLibrary.simpleMessage("Finalizado"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirmar"),
        "confirmTimeSelection":
            MessageLookupByLibrary.simpleMessage("Confirmar Selección de Hora"),
        "conflictingEvent": MessageLookupByLibrary.simpleMessage(
            "Esta hora entra en conflicto con un evento existente"),
        "createEvent": MessageLookupByLibrary.simpleMessage("Crear Evento"),
        "createQuotation":
            MessageLookupByLibrary.simpleMessage("Crear Cotización"),
        "createdAt": MessageLookupByLibrary.simpleMessage("Creado en"),
        "daysAgo": m0,
        "delete": MessageLookupByLibrary.simpleMessage("Eliminar"),
        "description": MessageLookupByLibrary.simpleMessage("Descripción"),
        "duration": MessageLookupByLibrary.simpleMessage("Duración"),
        "durationCannotBeZero": MessageLookupByLibrary.simpleMessage(
            "La duración no puede ser cero"),
        "edit": MessageLookupByLibrary.simpleMessage("Editar"),
        "editEvent": MessageLookupByLibrary.simpleMessage("Editar Evento"),
        "end": MessageLookupByLibrary.simpleMessage("Fin"),
        "endDate": MessageLookupByLibrary.simpleMessage("Fecha de Fin"),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
        "errorMsgGuestValidationError": MessageLookupByLibrary.simpleMessage(
            "Por favor seleccione un invitado"),
        "errorMsgHoursValidationError": MessageLookupByLibrary.simpleMessage(
            "Por favor seleccione una hora"),
        "errorMsgNotesValidationError": MessageLookupByLibrary.simpleMessage(
            "Notas superan el límite de caracteres"),
        "estimatedCost": MessageLookupByLibrary.simpleMessage("Costo Estimado"),
        "estimatedCostDisclaimer": MessageLookupByLibrary.simpleMessage(
            "El costo estimado es solo una estimación y puede variar según el trabajo real"),
        "eventColor": MessageLookupByLibrary.simpleMessage("Color del Evento"),
        "eventDetails":
            MessageLookupByLibrary.simpleMessage("Detalles del Evento"),
        "eventLocation":
            MessageLookupByLibrary.simpleMessage("Ubicación del Evento"),
        "eventOverlap":
            MessageLookupByLibrary.simpleMessage("Superposición de Eventos"),
        "eventOverlapMessage": MessageLookupByLibrary.simpleMessage(
            "Este evento se superpone con un evento existente. ¿Deseas continuar?"),
        "eventTitle": MessageLookupByLibrary.simpleMessage("Título del Evento"),
        "extraInfo":
            MessageLookupByLibrary.simpleMessage("Información Adicional"),
        "from": MessageLookupByLibrary.simpleMessage("Desde"),
        "getArtistActionText":
            MessageLookupByLibrary.simpleMessage("Obtener Artista"),
        "goBack": MessageLookupByLibrary.simpleMessage("Volver"),
        "guest": MessageLookupByLibrary.simpleMessage("Invitado"),
        "haircut": MessageLookupByLibrary.simpleMessage("Corte de Pelo"),
        "hour": MessageLookupByLibrary.simpleMessage("Hora"),
        "hours": MessageLookupByLibrary.simpleMessage("horas"),
        "hoursAgo": m1,
        "invalidNumber":
            MessageLookupByLibrary.simpleMessage("Número Inválido"),
        "invalidRange": MessageLookupByLibrary.simpleMessage("Rango Inválido"),
        "justNow": MessageLookupByLibrary.simpleMessage("Ahora mismo"),
        "loadMore": MessageLookupByLibrary.simpleMessage("Cargar Más"),
        "locale": MessageLookupByLibrary.simpleMessage("es_CL"),
        "locationDetails":
            MessageLookupByLibrary.simpleMessage("Detalles de la Ubicación"),
        "makeup": MessageLookupByLibrary.simpleMessage("Makeup"),
        "minutes": MessageLookupByLibrary.simpleMessage("minutos"),
        "minutesAgo": m2,
        "monthsAgo": m3,
        "nail": MessageLookupByLibrary.simpleMessage("Nails"),
        "nextWeek": MessageLookupByLibrary.simpleMessage("Semana Siguiente"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noEventsToday": MessageLookupByLibrary.simpleMessage(
            "No hay eventos programados para hoy"),
        "noWorkEvidence":
            MessageLookupByLibrary.simpleMessage("No hay evidencia de trabajo"),
        "notSelected": MessageLookupByLibrary.simpleMessage("No seleccionado"),
        "note": MessageLookupByLibrary.simpleMessage("Nota"),
        "notification": MessageLookupByLibrary.simpleMessage("Notificación"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "other": MessageLookupByLibrary.simpleMessage("Otro"),
        "piercing": MessageLookupByLibrary.simpleMessage("Piercing"),
        "pleaseSelectTimeRange": MessageLookupByLibrary.simpleMessage(
            "Por favor, selecciona un rango de tiempo"),
        "previousWeek": MessageLookupByLibrary.simpleMessage("Semana Anterior"),
        "proceed": MessageLookupByLibrary.simpleMessage("Continuar"),
        "processingQuotation":
            MessageLookupByLibrary.simpleMessage("Procesando Cotización"),
        "processingQuotationMessage": MessageLookupByLibrary.simpleMessage(
            "Por favor, espera mientras procesamos tu cotización"),
        "proposedDesigns":
            MessageLookupByLibrary.simpleMessage("Diseños Propuestos"),
        "quotationCancelledSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Cotización cancelada exitosamente"),
        "quotationDate":
            MessageLookupByLibrary.simpleMessage("Fecha De Cotización"),
        "quotationDetails":
            MessageLookupByLibrary.simpleMessage("Detalles de la Cotización"),
        "quotationResponseSuccess": MessageLookupByLibrary.simpleMessage(
            "Respuesta a la cotización enviada exitosamente"),
        "quotationResponseSuccessMessage": MessageLookupByLibrary.simpleMessage(
            "Tu respuesta ha sido enviada exitosamente"),
        "quote": MessageLookupByLibrary.simpleMessage("Cotización"),
        "quoteDetails":
            MessageLookupByLibrary.simpleMessage("Detalles de la Cotización"),
        "quoted": MessageLookupByLibrary.simpleMessage("Cotizado"),
        "quotes": MessageLookupByLibrary.simpleMessage("Cotizaciones"),
        "referenceImages":
            MessageLookupByLibrary.simpleMessage("Imágenes de Referencia"),
        "reject": MessageLookupByLibrary.simpleMessage("Rechazar"),
        "rejectAppeal":
            MessageLookupByLibrary.simpleMessage("Rechazar Apelación"),
        "rejectReasonArtisticDisagreement":
            MessageLookupByLibrary.simpleMessage("Desacuerdo Artístico"),
        "rejectReasonBeyondExpertise":
            MessageLookupByLibrary.simpleMessage("Fuera de Experiencia"),
        "rejectReasonInsufficientDetails":
            MessageLookupByLibrary.simpleMessage("Detalles Insuficientes"),
        "rejectReasonOther": MessageLookupByLibrary.simpleMessage("Otro"),
        "rejectReasonSchedulingConflict":
            MessageLookupByLibrary.simpleMessage("Conflicto de Horario"),
        "rejectionReason":
            MessageLookupByLibrary.simpleMessage("Motivo de Rechazo"),
        "reply": MessageLookupByLibrary.simpleMessage("Responder"),
        "request": MessageLookupByLibrary.simpleMessage("Solicitud"),
        "requestDetails":
            MessageLookupByLibrary.simpleMessage("Detalles de la Solicitud"),
        "requests": MessageLookupByLibrary.simpleMessage("Solicitudes"),
        "requiredField":
            MessageLookupByLibrary.simpleMessage("Campo Requerido"),
        "resetZoom": MessageLookupByLibrary.simpleMessage("Restablecer Zoom"),
        "respondToQuotation":
            MessageLookupByLibrary.simpleMessage("Responder Cotización"),
        "scheduleAssistant":
            MessageLookupByLibrary.simpleMessage("Asistente de agenda"),
        "scheduleEvent": MessageLookupByLibrary.simpleMessage("Agendar cita"),
        "scheduleInfo":
            MessageLookupByLibrary.simpleMessage("Información de Agenda"),
        "selectDate": MessageLookupByLibrary.simpleMessage("Seleccionar Fecha"),
        "selectDateTime":
            MessageLookupByLibrary.simpleMessage("Seleccionar Fecha y Hora"),
        "selectDuration":
            MessageLookupByLibrary.simpleMessage("Seleccionar Duración"),
        "selectEndTime":
            MessageLookupByLibrary.simpleMessage("Seleccionar Hora de Fin"),
        "selectService":
            MessageLookupByLibrary.simpleMessage("Seleccionar servicio"),
        "selectStartTime":
            MessageLookupByLibrary.simpleMessage("Seleccionar Hora de Inicio"),
        "selectTime": MessageLookupByLibrary.simpleMessage("Seleccionar Hora"),
        "selectValidTimeRange": MessageLookupByLibrary.simpleMessage(
            "Por favor, selecciona un rango de tiempo válido"),
        "send": MessageLookupByLibrary.simpleMessage("Enviar"),
        "sendMessage": MessageLookupByLibrary.simpleMessage("Enviar Mensaje"),
        "start": MessageLookupByLibrary.simpleMessage("Inicio"),
        "startDate": MessageLookupByLibrary.simpleMessage("Fecha de Inicio"),
        "status": MessageLookupByLibrary.simpleMessage("Estado"),
        "submit": MessageLookupByLibrary.simpleMessage("Enviar"),
        "tattoo": MessageLookupByLibrary.simpleMessage("Tatuaje"),
        "tentativeEvent":
            MessageLookupByLibrary.simpleMessage("Evento Tentativo"),
        "timeSlotUnavailable": MessageLookupByLibrary.simpleMessage(
            "Este horario no está disponible"),
        "to": MessageLookupByLibrary.simpleMessage("Hasta"),
        "today": MessageLookupByLibrary.simpleMessage("Hoy"),
        "upcomming": MessageLookupByLibrary.simpleMessage("Se acerca"),
        "workEvidence":
            MessageLookupByLibrary.simpleMessage("Evidencia del Trabajo"),
        "yearsAgo": m4,
        "yes": MessageLookupByLibrary.simpleMessage("Sí"),
        "yourResponse": MessageLookupByLibrary.simpleMessage("Tu Respuesta"),
        "zoomIn": MessageLookupByLibrary.simpleMessage("Acercar"),
        "zoomOut": MessageLookupByLibrary.simpleMessage("Alejar")
      };
}
