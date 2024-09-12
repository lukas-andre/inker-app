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
        "acceptAppeal":
            MessageLookupByLibrary.simpleMessage("Aceptar Apelación"),
        "action": MessageLookupByLibrary.simpleMessage("Acción"),
        "additionalDetails":
            MessageLookupByLibrary.simpleMessage("Detalles Adicionales"),
        "appointmentDate":
            MessageLookupByLibrary.simpleMessage("Fecha de la Cita"),
        "appointmentDuration":
            MessageLookupByLibrary.simpleMessage("Duración de la Cita"),
        "barber": MessageLookupByLibrary.simpleMessage("Barbería"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "cancelEvent": MessageLookupByLibrary.simpleMessage("Cancelar Evento"),
        "cancelQuotationConfirmationMessage":
            MessageLookupByLibrary.simpleMessage(
                "¿Estás seguro de que deseas cancelar esta cotización?"),
        "cancelQuotationConfirmationTitle":
            MessageLookupByLibrary.simpleMessage("Cancelar Cotización"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Cancelado"),
        "characters": MessageLookupByLibrary.simpleMessage("caracteres"),
        "completed": MessageLookupByLibrary.simpleMessage("Finalizado"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirmar"),
        "createEvent": MessageLookupByLibrary.simpleMessage("Crear Evento"),
        "createQuotation":
            MessageLookupByLibrary.simpleMessage("Crear Cotización"),
        "createdAt": MessageLookupByLibrary.simpleMessage("Creado en"),
        "daysAgo": m0,
        "delete": MessageLookupByLibrary.simpleMessage("Eliminar"),
        "description": MessageLookupByLibrary.simpleMessage("Descripción"),
        "duration": MessageLookupByLibrary.simpleMessage("Duración"),
        "edit": MessageLookupByLibrary.simpleMessage("Editar"),
        "editEvent": MessageLookupByLibrary.simpleMessage("Editar Evento"),
        "endDate": MessageLookupByLibrary.simpleMessage("Fecha de Fin"),
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
        "eventTitle": MessageLookupByLibrary.simpleMessage("Título del Evento"),
        "extraInfo":
            MessageLookupByLibrary.simpleMessage("Información Adicional"),
        "getArtistActionText":
            MessageLookupByLibrary.simpleMessage("Obtener Artista"),
        "guest": MessageLookupByLibrary.simpleMessage("Invitado"),
        "haircut": MessageLookupByLibrary.simpleMessage("Corte de Pelo"),
        "hour": MessageLookupByLibrary.simpleMessage("Hora"),
        "hoursAgo": m1,
        "invalidNumber":
            MessageLookupByLibrary.simpleMessage("Número Inválido"),
        "justNow": MessageLookupByLibrary.simpleMessage("Ahora mismo"),
        "loadMore": MessageLookupByLibrary.simpleMessage("Cargar Más"),
        "locale": MessageLookupByLibrary.simpleMessage("es_CL"),
        "locationDetails":
            MessageLookupByLibrary.simpleMessage("Detalles de la Ubicación"),
        "makeup": MessageLookupByLibrary.simpleMessage("Makeup"),
        "minutesAgo": m2,
        "monthsAgo": m3,
        "nail": MessageLookupByLibrary.simpleMessage("Nails"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noWorkEvidence":
            MessageLookupByLibrary.simpleMessage("No hay evidencia de trabajo"),
        "notSelected": MessageLookupByLibrary.simpleMessage("No seleccionado"),
        "note": MessageLookupByLibrary.simpleMessage("Nota"),
        "notification": MessageLookupByLibrary.simpleMessage("Notificación"),
        "other": MessageLookupByLibrary.simpleMessage("Otro"),
        "piercing": MessageLookupByLibrary.simpleMessage("Piercing"),
        "proposedDesigns":
            MessageLookupByLibrary.simpleMessage("Diseños Propuestos"),
        "quotationCancelledSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Cotización cancelada exitosamente"),
        "quotationDetails":
            MessageLookupByLibrary.simpleMessage("Detalles de la Cotización"),
        "quotationResponseSuccess": MessageLookupByLibrary.simpleMessage(
            "Respuesta a la cotización enviada exitosamente"),
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
        "rejectionReason":
            MessageLookupByLibrary.simpleMessage("Motivo de Rechazo"),
        "reply": MessageLookupByLibrary.simpleMessage("Responder"),
        "request": MessageLookupByLibrary.simpleMessage("Solicitud"),
        "requestDetails":
            MessageLookupByLibrary.simpleMessage("Detalles de la Solicitud"),
        "requests": MessageLookupByLibrary.simpleMessage("Solicitudes"),
        "requiredField":
            MessageLookupByLibrary.simpleMessage("Campo Requerido"),
        "respondToQuotation":
            MessageLookupByLibrary.simpleMessage("Responder Cotización"),
        "scheduleEvent": MessageLookupByLibrary.simpleMessage("Agendar cita"),
        "selectService":
            MessageLookupByLibrary.simpleMessage("Seleccionar servicio"),
        "send": MessageLookupByLibrary.simpleMessage("Enviar"),
        "sendMessage": MessageLookupByLibrary.simpleMessage("Enviar Mensaje"),
        "startDate": MessageLookupByLibrary.simpleMessage("Fecha de Inicio"),
        "status": MessageLookupByLibrary.simpleMessage("Estado"),
        "submit": MessageLookupByLibrary.simpleMessage("Enviar"),
        "tattoo": MessageLookupByLibrary.simpleMessage("Tatuaje"),
        "upcomming": MessageLookupByLibrary.simpleMessage("Se acerca"),
        "workEvidence":
            MessageLookupByLibrary.simpleMessage("Evidencia del Trabajo"),
        "yearsAgo": m4,
        "yes": MessageLookupByLibrary.simpleMessage("Sí"),
        "yourResponse": MessageLookupByLibrary.simpleMessage("Tu Respuesta")
      };
}
