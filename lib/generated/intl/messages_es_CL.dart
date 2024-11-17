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

  static String m2(hoursv2, minutesv2) =>
      "${hoursv2} horas y ${minutesv2} minutos";

  static String m3(hoursv2) => "${hoursv2} horas";

  static String m4(count) =>
      "${Intl.plural(count, one: 'hace 1 minuto', other: 'hace ${count} minutos')}";

  static String m5(minutesv2) => "${minutesv2} minutos";

  static String m6(count) =>
      "${Intl.plural(count, one: 'hace 1 mes', other: 'hace ${count} meses')}";

  static String m7(count) =>
      "${Intl.plural(count, one: 'hace 1 año', other: 'hace ${count} años')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "accept": MessageLookupByLibrary.simpleMessage("Aceptar"),
        "acceptAppeal":
            MessageLookupByLibrary.simpleMessage("Aceptar Apelación"),
        "acceptQuotation":
            MessageLookupByLibrary.simpleMessage("Aceptar Cotización"),
        "accepted": MessageLookupByLibrary.simpleMessage("Aceptado"),
        "acceptedTheQuotation":
            MessageLookupByLibrary.simpleMessage("aceptó la cotización"),
        "action": MessageLookupByLibrary.simpleMessage("Acción"),
        "addDescription": MessageLookupByLibrary.simpleMessage(
            "Agrega una descripción sobre ti."),
        "addStudioPhoto":
            MessageLookupByLibrary.simpleMessage("Agregar foto del estudio"),
        "additionalDetails":
            MessageLookupByLibrary.simpleMessage("Detalles Adicionales"),
        "address": MessageLookupByLibrary.simpleMessage("Dirección"),
        "and": MessageLookupByLibrary.simpleMessage("y"),
        "appeal": MessageLookupByLibrary.simpleMessage("Apelación"),
        "appealQuotation":
            MessageLookupByLibrary.simpleMessage("Apelar Cotización"),
        "appealReason":
            MessageLookupByLibrary.simpleMessage("Motivo de Apelación"),
        "appealReasonDateChange": MessageLookupByLibrary.simpleMessage(
            "Necesito cambiar la fecha de la cita"),
        "appealReasonDesignChange":
            MessageLookupByLibrary.simpleMessage("Necesito cambiar el diseño"),
        "appealReasonOther": MessageLookupByLibrary.simpleMessage("Otro"),
        "appealReasonPriceChange":
            MessageLookupByLibrary.simpleMessage("El precio es demasiado alto"),
        "appealedTheQuotation":
            MessageLookupByLibrary.simpleMessage("Apeló la cotización"),
        "appointmentDate":
            MessageLookupByLibrary.simpleMessage("Fecha de la Cita"),
        "appointmentDateChangedFrom": MessageLookupByLibrary.simpleMessage(
            "La fecha de la cita cambió de"),
        "appointmentDateTime":
            MessageLookupByLibrary.simpleMessage("Fecha y Hora de la Cita"),
        "appointmentDuration":
            MessageLookupByLibrary.simpleMessage("Duración de la Cita"),
        "areYouSureLogout": MessageLookupByLibrary.simpleMessage(
            "¿Estás seguro de que deseas cerrar sesión?"),
        "artist": MessageLookupByLibrary.simpleMessage("Artista"),
        "awaitingArtist":
            MessageLookupByLibrary.simpleMessage("Esperando Artista"),
        "awaitingCustomer":
            MessageLookupByLibrary.simpleMessage("Esperando Cliente"),
        "awaitingReply":
            MessageLookupByLibrary.simpleMessage("Esperando Respuesta"),
        "barber": MessageLookupByLibrary.simpleMessage("Barbería"),
        "between": MessageLookupByLibrary.simpleMessage("entre"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "cancelEvent": MessageLookupByLibrary.simpleMessage("Cancelar Evento"),
        "cancelQuotation":
            MessageLookupByLibrary.simpleMessage("Cancelar Cotización"),
        "cancelQuotationConfirmationMessage":
            MessageLookupByLibrary.simpleMessage(
                "¿Estás seguro de que deseas cancelar esta cotización?"),
        "cancelQuotationConfirmationTitle":
            MessageLookupByLibrary.simpleMessage("Cancelar Cotización"),
        "cancelReasonChangeOfMind":
            MessageLookupByLibrary.simpleMessage("Cambié de opinión"),
        "cancelReasonFinancialReasons":
            MessageLookupByLibrary.simpleMessage("Motivos financieros"),
        "cancelReasonFoundAnotherArtist":
            MessageLookupByLibrary.simpleMessage("Encontré otro artista"),
        "cancelReasonNotAttended":
            MessageLookupByLibrary.simpleMessage("No asistió a la cita"),
        "cancelReasonOther": MessageLookupByLibrary.simpleMessage("Otro"),
        "cancelReasonPersonalReasons":
            MessageLookupByLibrary.simpleMessage("Motivos personales"),
        "cancelReasonSystemTimeout":
            MessageLookupByLibrary.simpleMessage("Tiempo de espera agotado"),
        "canceledTheQuotation":
            MessageLookupByLibrary.simpleMessage("canceló la cotización"),
        "cancellationReason":
            MessageLookupByLibrary.simpleMessage("Motivo de Cancelación"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Cancelado"),
        "changeImage": MessageLookupByLibrary.simpleMessage("Cambiar Imagen"),
        "changeSelection":
            MessageLookupByLibrary.simpleMessage("Cambiar Selección"),
        "changedStatusFrom":
            MessageLookupByLibrary.simpleMessage("cambió el estado de"),
        "characters": MessageLookupByLibrary.simpleMessage("caracteres"),
        "chooseImage": MessageLookupByLibrary.simpleMessage("Elegir Imagen"),
        "city": MessageLookupByLibrary.simpleMessage("Ciudad"),
        "collapse": MessageLookupByLibrary.simpleMessage("Colapsar"),
        "completed": MessageLookupByLibrary.simpleMessage("Finalizado"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirmar"),
        "confirmDeletion":
            MessageLookupByLibrary.simpleMessage("Confirmar Eliminación"),
        "confirmDeletionMessage": MessageLookupByLibrary.simpleMessage(
            "¿Estás seguro de que deseas eliminar tu cuenta? Esta acción no se puede deshacer."),
        "confirmLogout":
            MessageLookupByLibrary.simpleMessage("Confirmar Cierre de Sesión"),
        "confirmTimeSelection":
            MessageLookupByLibrary.simpleMessage("Confirmar Selección de Hora"),
        "conflictingEvent": MessageLookupByLibrary.simpleMessage(
            "Esta hora entra en conflicto con un evento existente"),
        "contactInformation":
            MessageLookupByLibrary.simpleMessage("Información de Contacto"),
        "createEvent": MessageLookupByLibrary.simpleMessage("Crear Evento"),
        "createQuotation":
            MessageLookupByLibrary.simpleMessage("Crear Cotización"),
        "createdAt": MessageLookupByLibrary.simpleMessage("Creado en"),
        "currentStatus": MessageLookupByLibrary.simpleMessage("Estado Actual"),
        "customer": MessageLookupByLibrary.simpleMessage("Cliente"),
        "daysAgo": m0,
        "delete": MessageLookupByLibrary.simpleMessage("Eliminar"),
        "deleteAccount":
            MessageLookupByLibrary.simpleMessage("Eliminar Cuenta"),
        "description": MessageLookupByLibrary.simpleMessage("Descripción"),
        "done": MessageLookupByLibrary.simpleMessage("Hecho"),
        "duration": MessageLookupByLibrary.simpleMessage("Duración"),
        "durationCannotBeZero": MessageLookupByLibrary.simpleMessage(
            "La duración no puede ser cero"),
        "edit": MessageLookupByLibrary.simpleMessage("Editar"),
        "editEvent": MessageLookupByLibrary.simpleMessage("Editar Evento"),
        "editProfile": MessageLookupByLibrary.simpleMessage("Editar Perfil"),
        "email": MessageLookupByLibrary.simpleMessage("Correo electrónico"),
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
        "estimatedCostChangedFrom":
            MessageLookupByLibrary.simpleMessage("El costo estimado cambió de"),
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
        "expand": MessageLookupByLibrary.simpleMessage("Expandir"),
        "extraInfo":
            MessageLookupByLibrary.simpleMessage("Información Adicional"),
        "followers": MessageLookupByLibrary.simpleMessage("Seguidores"),
        "following": MessageLookupByLibrary.simpleMessage("Seguidos"),
        "from": MessageLookupByLibrary.simpleMessage("Desde"),
        "fullName": MessageLookupByLibrary.simpleMessage("Nombre completo"),
        "genres": MessageLookupByLibrary.simpleMessage("Géneros"),
        "getArtistActionText":
            MessageLookupByLibrary.simpleMessage("Obtener Artista"),
        "goBack": MessageLookupByLibrary.simpleMessage("Volver"),
        "guest": MessageLookupByLibrary.simpleMessage("Invitado"),
        "haircut": MessageLookupByLibrary.simpleMessage("Corte de Pelo"),
        "hour": MessageLookupByLibrary.simpleMessage("Hora"),
        "hours": MessageLookupByLibrary.simpleMessage("horas"),
        "hoursAgo": m1,
        "hoursAndMinutes": m2,
        "hoursv2": m3,
        "invalidNumber":
            MessageLookupByLibrary.simpleMessage("Número Inválido"),
        "invalidRange": MessageLookupByLibrary.simpleMessage("Rango Inválido"),
        "justNow": MessageLookupByLibrary.simpleMessage("Ahora mismo"),
        "language": MessageLookupByLibrary.simpleMessage("Idioma"),
        "loadMore": MessageLookupByLibrary.simpleMessage("Cargar Más"),
        "locale": MessageLookupByLibrary.simpleMessage("es_CL"),
        "locationDetails":
            MessageLookupByLibrary.simpleMessage("Detalles de la Ubicación"),
        "locationServices":
            MessageLookupByLibrary.simpleMessage("Servicios de ubicación"),
        "logOut": MessageLookupByLibrary.simpleMessage("Cerrar sesión"),
        "logout": MessageLookupByLibrary.simpleMessage("Cerrar Sesión"),
        "makeup": MessageLookupByLibrary.simpleMessage("Makeup"),
        "memberSince": MessageLookupByLibrary.simpleMessage("Miembro desde"),
        "minutes": MessageLookupByLibrary.simpleMessage("minutos"),
        "minutesAgo": m4,
        "minutesv2": m5,
        "monthsAgo": m6,
        "myProfile": MessageLookupByLibrary.simpleMessage("Mi Perfil"),
        "nail": MessageLookupByLibrary.simpleMessage("Nails"),
        "newRequest": MessageLookupByLibrary.simpleMessage("Nueva Solicitud"),
        "newRequests":
            MessageLookupByLibrary.simpleMessage("Nuevas Solicitudes"),
        "nextWeek": MessageLookupByLibrary.simpleMessage("Semana Siguiente"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noEventsToday": MessageLookupByLibrary.simpleMessage(
            "No hay eventos programados para hoy"),
        "noImageSelected": MessageLookupByLibrary.simpleMessage(
            "No se ha seleccionado ninguna imagen"),
        "noImagesAvailable":
            MessageLookupByLibrary.simpleMessage("No hay imágenes disponibles"),
        "noQuotationsFound": MessageLookupByLibrary.simpleMessage(
            "No se encontraron cotizaciones"),
        "noReviewsYet":
            MessageLookupByLibrary.simpleMessage("Aún no hay reseñas"),
        "noServicesAvailable": MessageLookupByLibrary.simpleMessage(
            "No hay servicios disponibles"),
        "noStudioPhotoAvailable": MessageLookupByLibrary.simpleMessage(
            "No hay foto del estudio disponible"),
        "noWorkEvidence":
            MessageLookupByLibrary.simpleMessage("No hay evidencia de trabajo"),
        "notAvailable": MessageLookupByLibrary.simpleMessage("No disponible"),
        "notSelected": MessageLookupByLibrary.simpleMessage("No seleccionado"),
        "note": MessageLookupByLibrary.simpleMessage("Nota"),
        "notification": MessageLookupByLibrary.simpleMessage("Notificación"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notificaciones"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "other": MessageLookupByLibrary.simpleMessage("Otro"),
        "pending": MessageLookupByLibrary.simpleMessage("Pendiente"),
        "phone": MessageLookupByLibrary.simpleMessage("Teléfono"),
        "piercing": MessageLookupByLibrary.simpleMessage("Piercing"),
        "pleaseSelectTimeRange": MessageLookupByLibrary.simpleMessage(
            "Por favor, selecciona un rango de tiempo"),
        "previousWeek": MessageLookupByLibrary.simpleMessage("Semana Anterior"),
        "privacyPolicy":
            MessageLookupByLibrary.simpleMessage("Política de privacidad"),
        "privacyPolicyContent": MessageLookupByLibrary.simpleMessage(
            "Su privacidad es importante para nosotros. No recopilamos información personal sin su consentimiento."),
        "proceed": MessageLookupByLibrary.simpleMessage("Continuar"),
        "processingQuotation":
            MessageLookupByLibrary.simpleMessage("Procesando Cotización"),
        "processingQuotationMessage": MessageLookupByLibrary.simpleMessage(
            "Por favor, espera mientras procesamos tu cotización"),
        "profileImage":
            MessageLookupByLibrary.simpleMessage("Imagen de Perfil"),
        "proposedDesigns":
            MessageLookupByLibrary.simpleMessage("Diseños Propuestos"),
        "quotationCancelledSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Cotización cancelada exitosamente"),
        "quotationDate":
            MessageLookupByLibrary.simpleMessage("Fecha De Cotización"),
        "quotationDetails":
            MessageLookupByLibrary.simpleMessage("Detalles de la Cotización"),
        "quotationHistory":
            MessageLookupByLibrary.simpleMessage("Historial de Cotizaciones"),
        "quotationResponseSuccess": MessageLookupByLibrary.simpleMessage(
            "Respuesta a la cotización enviada exitosamente"),
        "quotationResponseSuccessMessage": MessageLookupByLibrary.simpleMessage(
            "Tu respuesta ha sido enviada exitosamente"),
        "quotationStatusArtistAccepted":
            MessageLookupByLibrary.simpleMessage("Agendado"),
        "quotationStatusArtistAppealed":
            MessageLookupByLibrary.simpleMessage("Apelación Recibida"),
        "quotationStatusArtistCanceled":
            MessageLookupByLibrary.simpleMessage("Cancelado por Ti"),
        "quotationStatusArtistPending":
            MessageLookupByLibrary.simpleMessage("Nueva Solicitud"),
        "quotationStatusArtistQuoted":
            MessageLookupByLibrary.simpleMessage("Esperando Respuesta"),
        "quotationStatusArtistRejected":
            MessageLookupByLibrary.simpleMessage("Rechazado por Cliente"),
        "quotationStatusCustomerAccepted":
            MessageLookupByLibrary.simpleMessage("Agendado"),
        "quotationStatusCustomerAppealed":
            MessageLookupByLibrary.simpleMessage("Esperando Artista"),
        "quotationStatusCustomerCanceled":
            MessageLookupByLibrary.simpleMessage("Cancelado"),
        "quotationStatusCustomerPending":
            MessageLookupByLibrary.simpleMessage("Esperando Respuesta"),
        "quotationStatusCustomerQuoted":
            MessageLookupByLibrary.simpleMessage("Cotización Recibida"),
        "quotationStatusCustomerRejected":
            MessageLookupByLibrary.simpleMessage("Rechazado por Ti"),
        "quote": MessageLookupByLibrary.simpleMessage("Cotización"),
        "quoteDetails":
            MessageLookupByLibrary.simpleMessage("Detalles de la Cotización"),
        "quoted": MessageLookupByLibrary.simpleMessage("Cotizado"),
        "quotedTheRequest":
            MessageLookupByLibrary.simpleMessage("Cotizó la solicitud"),
        "quotes": MessageLookupByLibrary.simpleMessage("Cotizaciones"),
        "rating": MessageLookupByLibrary.simpleMessage("Calificación"),
        "receivedQuotation":
            MessageLookupByLibrary.simpleMessage("Cotización Recibida"),
        "receivedQuotations":
            MessageLookupByLibrary.simpleMessage("Cotizaciones Recibidas"),
        "referenceImages":
            MessageLookupByLibrary.simpleMessage("Imágenes de Referencia"),
        "reject": MessageLookupByLibrary.simpleMessage("Rechazar"),
        "rejectAppeal":
            MessageLookupByLibrary.simpleMessage("Rechazar Apelación"),
        "rejectQuotation":
            MessageLookupByLibrary.simpleMessage("Rechazar Cotización"),
        "rejectReasonArtisticDisagreement":
            MessageLookupByLibrary.simpleMessage("Desacuerdo Artístico"),
        "rejectReasonBeyondExpertise":
            MessageLookupByLibrary.simpleMessage("Fuera de Experiencia"),
        "rejectReasonChangedMyMind":
            MessageLookupByLibrary.simpleMessage("Cambié de opinión"),
        "rejectReasonFoundAnotherArtist":
            MessageLookupByLibrary.simpleMessage("Encontré otro artista"),
        "rejectReasonInsufficientDetails":
            MessageLookupByLibrary.simpleMessage("Detalles Insuficientes"),
        "rejectReasonNotWhatIWanted":
            MessageLookupByLibrary.simpleMessage("No es lo que quería"),
        "rejectReasonOther": MessageLookupByLibrary.simpleMessage("Otro"),
        "rejectReasonSchedulingConflict":
            MessageLookupByLibrary.simpleMessage("Conflicto de Horario"),
        "rejectReasonTooExpensive":
            MessageLookupByLibrary.simpleMessage("Demasiado Caro"),
        "rejectedTheQuotation":
            MessageLookupByLibrary.simpleMessage("rechazó la cotización"),
        "rejectionReason":
            MessageLookupByLibrary.simpleMessage("Motivo de Rechazo"),
        "removeImage": MessageLookupByLibrary.simpleMessage("Eliminar Imagen"),
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
        "responded": MessageLookupByLibrary.simpleMessage("Aceptado"),
        "save": MessageLookupByLibrary.simpleMessage("Guardar"),
        "saveChanges": MessageLookupByLibrary.simpleMessage("Guardar Cambios"),
        "scheduleAssistant":
            MessageLookupByLibrary.simpleMessage("Asistente de agenda"),
        "scheduleEvent": MessageLookupByLibrary.simpleMessage("Agendar cita"),
        "scheduleInfo":
            MessageLookupByLibrary.simpleMessage("Información de Agenda"),
        "scheduled": MessageLookupByLibrary.simpleMessage("Agendado"),
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
        "services": MessageLookupByLibrary.simpleMessage("Servicios"),
        "settings": MessageLookupByLibrary.simpleMessage("Ajustes"),
        "shortDescription":
            MessageLookupByLibrary.simpleMessage("Descripción Corta"),
        "start": MessageLookupByLibrary.simpleMessage("Inicio"),
        "startDate": MessageLookupByLibrary.simpleMessage("Fecha de Inicio"),
        "state": MessageLookupByLibrary.simpleMessage("Estado"),
        "status": MessageLookupByLibrary.simpleMessage("Estado"),
        "statusAccepted": MessageLookupByLibrary.simpleMessage("Aceptado"),
        "statusAppealed": MessageLookupByLibrary.simpleMessage("Apelado"),
        "statusCanceled": MessageLookupByLibrary.simpleMessage("Cancelado"),
        "statusPending": MessageLookupByLibrary.simpleMessage("Pendiente"),
        "statusQuoted": MessageLookupByLibrary.simpleMessage("Cotizado"),
        "statusRejected": MessageLookupByLibrary.simpleMessage("Rechazado"),
        "studioPhoto": MessageLookupByLibrary.simpleMessage("Foto del estudio"),
        "submit": MessageLookupByLibrary.simpleMessage("Enviar"),
        "system": MessageLookupByLibrary.simpleMessage("Sistema"),
        "tags": MessageLookupByLibrary.simpleMessage("Etiquetas"),
        "tattoo": MessageLookupByLibrary.simpleMessage("Tatuaje"),
        "tentativeEvent":
            MessageLookupByLibrary.simpleMessage("Evento Tentativo"),
        "termsAndConditions":
            MessageLookupByLibrary.simpleMessage("Términos y condiciones"),
        "termsAndConditionsContent": MessageLookupByLibrary.simpleMessage(
            "Al usar esta aplicación, usted acepta los términos y condiciones aquí descritos."),
        "timeSlotUnavailable": MessageLookupByLibrary.simpleMessage(
            "Este horario no está disponible"),
        "to": MessageLookupByLibrary.simpleMessage("Hasta"),
        "today": MessageLookupByLibrary.simpleMessage("Hoy"),
        "upcomming": MessageLookupByLibrary.simpleMessage("Se acerca"),
        "updateStudioPhoto":
            MessageLookupByLibrary.simpleMessage("Actualizar foto del estudio"),
        "username": MessageLookupByLibrary.simpleMessage("Nombre de usuario"),
        "viewDetails": MessageLookupByLibrary.simpleMessage("Ver Detalles"),
        "workEvidence":
            MessageLookupByLibrary.simpleMessage("Evidencia del Trabajo"),
        "yearsAgo": m7,
        "yes": MessageLookupByLibrary.simpleMessage("Sí"),
        "yourResponse": MessageLookupByLibrary.simpleMessage("Tu Respuesta"),
        "zoomIn": MessageLookupByLibrary.simpleMessage("Acercar"),
        "zoomOut": MessageLookupByLibrary.simpleMessage("Alejar")
      };
}
