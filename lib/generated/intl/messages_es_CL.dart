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

  static String m0(artistsFound, range) =>
      "${artistsFound} artistas encontrados en ${range}km";

  static String m1(count) =>
      "${Intl.plural(count, one: 'hace 1 día', other: 'hace ${count} días')}";

  static String m2(count) =>
      "${Intl.plural(count, one: 'hace 1 hora', other: 'hace ${count} horas')}";

  static String m3(hoursv2, minutesv2) =>
      "${hoursv2} horas y ${minutesv2} minutos";

  static String m4(hoursv2) => "${hoursv2} horas";

  static String m5(count) =>
      "${Intl.plural(count, one: 'hace 1 minuto', other: 'hace ${count} minutos')}";

  static String m6(minutesv2) => "${minutesv2} minutos";

  static String m7(count) =>
      "${Intl.plural(count, one: 'hace 1 mes', other: 'hace ${count} meses')}";

  static String m8(count) =>
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
        "accountSettings":
            MessageLookupByLibrary.simpleMessage("Configuración de la cuenta"),
        "action": MessageLookupByLibrary.simpleMessage("Acción"),
        "actionSuccessful":
            MessageLookupByLibrary.simpleMessage("Acción exitosa"),
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
        "applicationSettings": MessageLookupByLibrary.simpleMessage(
            "Configuración de la aplicación"),
        "appointmentDate":
            MessageLookupByLibrary.simpleMessage("Fecha de la Cita"),
        "appointmentDateChangedFrom": MessageLookupByLibrary.simpleMessage(
            "La fecha de la cita cambió de"),
        "appointmentDateTime":
            MessageLookupByLibrary.simpleMessage("Fecha y Hora de la Cita"),
        "appointmentDetails":
            MessageLookupByLibrary.simpleMessage("Detalles de la Cita"),
        "appointmentDuration":
            MessageLookupByLibrary.simpleMessage("Duración de la Cita"),
        "areYouSureLogout": MessageLookupByLibrary.simpleMessage(
            "¿Estás seguro de que deseas cerrar sesión?"),
        "artist": MessageLookupByLibrary.simpleMessage("Artista"),
        "artistsFound": m0,
        "awaitingArtist":
            MessageLookupByLibrary.simpleMessage("Esperando Artista"),
        "awaitingCustomer":
            MessageLookupByLibrary.simpleMessage("Esperando Cliente"),
        "awaitingReply":
            MessageLookupByLibrary.simpleMessage("Esperando Respuesta"),
        "barber": MessageLookupByLibrary.simpleMessage("Barbería"),
        "between": MessageLookupByLibrary.simpleMessage("entre"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "cancelAppointment":
            MessageLookupByLibrary.simpleMessage("Cancelar Cita"),
        "cancelAppointmentConfirmation": MessageLookupByLibrary.simpleMessage(
            "¿Estás seguro de que deseas cancelar la cita?"),
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
        "change": MessageLookupByLibrary.simpleMessage("Cambiar"),
        "changeAppointment":
            MessageLookupByLibrary.simpleMessage("Cambiar Cita"),
        "changeAppointmentInstruction": MessageLookupByLibrary.simpleMessage(
            "Por favor, proporciona los detalles para cambiar tu cita."),
        "changeImage": MessageLookupByLibrary.simpleMessage("Cambiar Imagen"),
        "changePassword":
            MessageLookupByLibrary.simpleMessage("Cambiar contraseña"),
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
        "confirmNewPassword":
            MessageLookupByLibrary.simpleMessage("Confirmar nueva contraseña"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirmar contraseña"),
        "confirmTimeSelection":
            MessageLookupByLibrary.simpleMessage("Confirmar Selección de Hora"),
        "conflictingEvent": MessageLookupByLibrary.simpleMessage(
            "Esta hora entra en conflicto con un evento existente"),
        "contactArtist": MessageLookupByLibrary.simpleMessage(
            "Por favor, contacta al artista para más detalles."),
        "contactInformation":
            MessageLookupByLibrary.simpleMessage("Información de Contacto"),
        "createEvent": MessageLookupByLibrary.simpleMessage("Crear Evento"),
        "createQuotation":
            MessageLookupByLibrary.simpleMessage("Crear Cotización"),
        "createdAt": MessageLookupByLibrary.simpleMessage("Creado en"),
        "currentPassword":
            MessageLookupByLibrary.simpleMessage("Contraseña actual"),
        "currentStatus": MessageLookupByLibrary.simpleMessage("Estado Actual"),
        "customer": MessageLookupByLibrary.simpleMessage("Cliente"),
        "date": MessageLookupByLibrary.simpleMessage("Fecha"),
        "daysAgo": m1,
        "delete": MessageLookupByLibrary.simpleMessage("Eliminar"),
        "deleteAccount":
            MessageLookupByLibrary.simpleMessage("Eliminar Cuenta"),
        "deleteAccountWarning": MessageLookupByLibrary.simpleMessage(
            "¿Estás seguro de que deseas eliminar tu cuenta? Esta acción es irreversible y eliminará todos los datos asociados a tu cuenta."),
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
        "hoursAgo": m2,
        "hoursAndMinutes": m3,
        "hoursv2": m4,
        "invalidNumber":
            MessageLookupByLibrary.simpleMessage("Número Inválido"),
        "invalidRange": MessageLookupByLibrary.simpleMessage("Rango Inválido"),
        "justNow": MessageLookupByLibrary.simpleMessage("Ahora mismo"),
        "km": MessageLookupByLibrary.simpleMessage("km"),
        "language": MessageLookupByLibrary.simpleMessage("Idioma"),
        "legal": MessageLookupByLibrary.simpleMessage("Legal"),
        "loadMore": MessageLookupByLibrary.simpleMessage("Cargar Más"),
        "locale": MessageLookupByLibrary.simpleMessage("es_CL"),
        "location": MessageLookupByLibrary.simpleMessage("Ubicación"),
        "locationDetails":
            MessageLookupByLibrary.simpleMessage("Detalles de la Ubicación"),
        "locationPermissionRequired": MessageLookupByLibrary.simpleMessage(
            "Permiso de ubicación requerido"),
        "locationServices":
            MessageLookupByLibrary.simpleMessage("Servicios de ubicación"),
        "locationServicesDescription": MessageLookupByLibrary.simpleMessage(
            "Habilitar o deshabilitar servicios de ubicación."),
        "logOut": MessageLookupByLibrary.simpleMessage("Cerrar sesión"),
        "logout": MessageLookupByLibrary.simpleMessage("Cerrar Sesión"),
        "makeup": MessageLookupByLibrary.simpleMessage("Makeup"),
        "memberSince": MessageLookupByLibrary.simpleMessage("Miembro desde"),
        "minutes": MessageLookupByLibrary.simpleMessage("minutos"),
        "minutesAgo": m5,
        "minutesv2": m6,
        "monthsAgo": m7,
        "myProfile": MessageLookupByLibrary.simpleMessage("Mi Perfil"),
        "nail": MessageLookupByLibrary.simpleMessage("Nails"),
        "newPassword": MessageLookupByLibrary.simpleMessage("Nueva contraseña"),
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
        "noNotificationsMessage": MessageLookupByLibrary.simpleMessage(
            "No tienes ninguna notificación todavía."),
        "noNotificationsTitle":
            MessageLookupByLibrary.simpleMessage("No hay notificaciones"),
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
        "notificationsDescription": MessageLookupByLibrary.simpleMessage(
            "Habilitar o deshabilitar notificaciones."),
        "notificationsPermissionRequired": MessageLookupByLibrary.simpleMessage(
            "Permiso de notificaciones requerido"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "openSettings":
            MessageLookupByLibrary.simpleMessage("Abrir Configuraciones"),
        "other": MessageLookupByLibrary.simpleMessage("Otro"),
        "passwordChangedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Contraseña cambiada exitosamente"),
        "passwordTooShort": MessageLookupByLibrary.simpleMessage(
            "La contraseña es demasiado corta"),
        "passwordsDontMatch": MessageLookupByLibrary.simpleMessage(
            "Las contraseñas no coinciden"),
        "pending": MessageLookupByLibrary.simpleMessage("Pendiente"),
        "permissionRequired":
            MessageLookupByLibrary.simpleMessage("Permiso requerido"),
        "phone": MessageLookupByLibrary.simpleMessage("Teléfono"),
        "piercing": MessageLookupByLibrary.simpleMessage("Piercing"),
        "pleaseProvideReason": MessageLookupByLibrary.simpleMessage(
            "Por favor, proporciona una razón para la cancelación."),
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
        "quotationNumber":
            MessageLookupByLibrary.simpleMessage("Número de Cotización"),
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
            MessageLookupByLibrary.simpleMessage("Rechazado"),
        "quote": MessageLookupByLibrary.simpleMessage("Cotización"),
        "quoteDetails":
            MessageLookupByLibrary.simpleMessage("Detalles de la Cotización"),
        "quoted": MessageLookupByLibrary.simpleMessage("Cotizado"),
        "quotedTheRequest":
            MessageLookupByLibrary.simpleMessage("Cotizó la solicitud"),
        "quotes": MessageLookupByLibrary.simpleMessage("Cotizaciones"),
        "range": MessageLookupByLibrary.simpleMessage("Rango"),
        "rating": MessageLookupByLibrary.simpleMessage("Calificación"),
        "receivedQuotation":
            MessageLookupByLibrary.simpleMessage("Cotización Recibida"),
        "receivedQuotations":
            MessageLookupByLibrary.simpleMessage("Cotizaciones Recibidas"),
        "referenceImages":
            MessageLookupByLibrary.simpleMessage("Imágenes de Referencia"),
        "refresh": MessageLookupByLibrary.simpleMessage("Actualizar"),
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
        "relatedQuotation":
            MessageLookupByLibrary.simpleMessage("Cotización Relacionada"),
        "removeImage": MessageLookupByLibrary.simpleMessage("Eliminar Imagen"),
        "reply": MessageLookupByLibrary.simpleMessage("Responder"),
        "request": MessageLookupByLibrary.simpleMessage("Solicitud"),
        "requestDetails":
            MessageLookupByLibrary.simpleMessage("Detalles de la Solicitud"),
        "requests": MessageLookupByLibrary.simpleMessage("Solicitudes"),
        "required": MessageLookupByLibrary.simpleMessage("Requerido"),
        "requiredField":
            MessageLookupByLibrary.simpleMessage("Campo Requerido"),
        "reset": MessageLookupByLibrary.simpleMessage("Restablecer"),
        "resetRange": MessageLookupByLibrary.simpleMessage("Restablecer Rango"),
        "resetZoom": MessageLookupByLibrary.simpleMessage("Restablecer Zoom"),
        "respondToQuotation":
            MessageLookupByLibrary.simpleMessage("Responder Cotización"),
        "responded": MessageLookupByLibrary.simpleMessage("Aceptado"),
        "retry": MessageLookupByLibrary.simpleMessage("Reintentar"),
        "save": MessageLookupByLibrary.simpleMessage("Guardar"),
        "saveChanges": MessageLookupByLibrary.simpleMessage("Guardar Cambios"),
        "scheduleAssistant":
            MessageLookupByLibrary.simpleMessage("Asistente de agenda"),
        "scheduleEvent": MessageLookupByLibrary.simpleMessage("Agendar cita"),
        "scheduleInfo":
            MessageLookupByLibrary.simpleMessage("Información de Agenda"),
        "scheduled": MessageLookupByLibrary.simpleMessage("Agendado"),
        "searchRadius":
            MessageLookupByLibrary.simpleMessage("Radio de búsqueda"),
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
        "time": MessageLookupByLibrary.simpleMessage("Tiempo"),
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
        "yearsAgo": m8,
        "yes": MessageLookupByLibrary.simpleMessage("Sí"),
        "yourResponse": MessageLookupByLibrary.simpleMessage("Tu Respuesta"),
        "zoomIn": MessageLookupByLibrary.simpleMessage("Acercar"),
        "zoomOut": MessageLookupByLibrary.simpleMessage("Alejar")
      };
}
