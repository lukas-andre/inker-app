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
      "${Intl.plural(count, zero: 'No artistas encontrados', one: '1 artista encontrado', other: '${count} artistas encontrados')}";

  static String m1(name) => "Artista: ${name}";

  static String m2(amount, currency) =>
      "El artista actualizó el costo de la oferta a ${amount} ${currency}";

  static String m3(artistsFound, range) =>
      "${artistsFound} artistas encontrados en ${range}km";

  static String m4(error) => "No se pudo seleccionar la imagen: ${error}";

  static String m5(count) =>
      "${Intl.plural(count, one: 'hace 1 día', other: 'hace ${count} días')}";

  static String m6(message) =>
      "Error al cargar detalles del evento: ${message}";

  static String m7(message) => "Error al cargar eventos: ${message}";

  static String m8(message) =>
      "Error al cargar las cotizaciones abiertas: ${message}";

  static String m9(sourceName) => "Filtrando por fuente: ${sourceName}";

  static String m10(tagName) => "Filtrando por etiqueta: ${tagName}";

  static String m11(count) =>
      "${Intl.plural(count, zero: 'Sin seguidores', one: '1 seguidor', other: '${count} seguidores')}";

  static String m12(count) =>
      "${Intl.plural(count, one: 'hace 1 hora', other: 'hace ${count} horas')}";

  static String m13(hoursv2, minutesv2) =>
      "${hoursv2} horas y ${minutesv2} minutos";

  static String m14(hoursv2) => "${hoursv2} horas";

  static String m15(distance) => "Distancia máxima: ${distance} km";

  static String m16(preview) => "Mensaje: ${preview}";

  static String m17(count, messageWord) => "${count} ${messageWord}";

  static String m18(length) =>
      "La descripción debe tener al menos ${length} caracteres";

  static String m19(rating) => "Rating mínimo: ${rating}";

  static String m20(count) =>
      "${Intl.plural(count, one: 'hace 1 minuto', other: 'hace ${count} minutos')}";

  static String m21(minutesv2) => "${minutesv2} minutos";

  static String m22(count) =>
      "${Intl.plural(count, one: 'hace 1 mes', other: 'hace ${count} meses')}";

  static String m23(tagName) =>
      "No hay plantillas con la etiqueta \'${tagName}\'";

  static String m24(amount) => "Tu oferta de ${amount} ha sido enviada";

  static String m25(count) =>
      "${Intl.plural(count, zero: 'Sin ofertas', one: '1 oferta', other: '${count} ofertas')}";

  static String m26(count, offerWord) => "Has recibido ${count} ${offerWord}";

  static String m27(amount, currency) =>
      "Presupuesto de referencia: ${amount} ${currency}";

  static String m28(status) => "Estado: ${status}";

  static String m29(amount) =>
      "El artista actualizó el costo de la oferta a ${amount} CLP.";

  static String m30(count) =>
      "${Intl.plural(count, zero: 'No reseñas aun', one: '1 reseña', other: '${count} reseñas')}";

  static String m31(message) => "Intenta refrescar la página: ${message}";

  static String m32(count) =>
      "${Intl.plural(count, one: 'hace 1 año', other: 'hace ${count} años')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about": MessageLookupByLibrary.simpleMessage("Acerca de"),
        "aboutMe": MessageLookupByLibrary.simpleMessage("Sobre Mí"),
        "accept": MessageLookupByLibrary.simpleMessage("Aceptar"),
        "acceptAppeal":
            MessageLookupByLibrary.simpleMessage("Aceptar Apelación"),
        "acceptOffer": MessageLookupByLibrary.simpleMessage("Aceptar oferta"),
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
        "addAShortDescriptionAboutYourselfAndYourTattooStyle":
            MessageLookupByLibrary.simpleMessage(
                "Agrega una breve descripción sobre ti y tu estilo de tatuaje"),
        "addDescription": MessageLookupByLibrary.simpleMessage(
            "Agrega una descripción sobre ti."),
        "addDesign": MessageLookupByLibrary.simpleMessage("Agregar diseño"),
        "addLocation":
            MessageLookupByLibrary.simpleMessage("Agregar Ubicación"),
        "addMoreImages":
            MessageLookupByLibrary.simpleMessage("Agregar más imágenes"),
        "addPhoto": MessageLookupByLibrary.simpleMessage("Agregar foto"),
        "addPhotosOfYourBestTattooWorkToShowcaseYourStyle":
            MessageLookupByLibrary.simpleMessage(
                "Agrega fotos de tus mejores trabajos de tatuaje para mostrar tu estilo"),
        "addReferenceImages": MessageLookupByLibrary.simpleMessage(
            "Agregar imágenes de referencia"),
        "addReferenceImagesOptional": MessageLookupByLibrary.simpleMessage(
            "Agregar imágenes de referencia (opcional)"),
        "addReferenceImagesOrSketches": MessageLookupByLibrary.simpleMessage(
            "Agrega imágenes de referencia o bocetos para tu propuesta."),
        "addSomeWorksToYourGallery": MessageLookupByLibrary.simpleMessage(
            "Agrega algunos trabajos a tu galería"),
        "addStencil": MessageLookupByLibrary.simpleMessage("Agregar Plantilla"),
        "addStudioPhoto":
            MessageLookupByLibrary.simpleMessage("Agregar foto del estudio"),
        "addTagsToMakeYourStencilMoreDiscoverable":
            MessageLookupByLibrary.simpleMessage(
                "Agrega etiquetas para hacer tu plantilla más visible"),
        "addTagsToMakeYourWorkMoreDiscoverable":
            MessageLookupByLibrary.simpleMessage(
                "Agrega etiquetas para hacer tu trabajo más visible"),
        "addTime": MessageLookupByLibrary.simpleMessage("Agregar Tiempo"),
        "addUnavailableTime": MessageLookupByLibrary.simpleMessage(
            "Agregar Tiempo No Disponible"),
        "addWork": MessageLookupByLibrary.simpleMessage("Agregar Trabajo"),
        "addYourFirstStencil": MessageLookupByLibrary.simpleMessage(
            "Agrega tu primera plantilla para comenzar"),
        "addYourStencilDesignsToShowcaseYourStyle":
            MessageLookupByLibrary.simpleMessage(
                "Agrega tus diseños de stencil para mostrar tu estilo"),
        "additionalDetails":
            MessageLookupByLibrary.simpleMessage("Detalles Adicionales"),
        "additionalDetailsOptional": MessageLookupByLibrary.simpleMessage(
            "Detalles adicionales (opcional)"),
        "additionalInformation":
            MessageLookupByLibrary.simpleMessage("Información adicional"),
        "address": MessageLookupByLibrary.simpleMessage("Dirección"),
        "addressDetails":
            MessageLookupByLibrary.simpleMessage("Detalles de la Dirección"),
        "aftercarePeriod":
            MessageLookupByLibrary.simpleMessage("Periodo de Cuidado"),
        "agenda": MessageLookupByLibrary.simpleMessage("Agenda"),
        "agendaSettings":
            MessageLookupByLibrary.simpleMessage("Configuración de Agenda"),
        "all": MessageLookupByLibrary.simpleMessage("Todos"),
        "allArtists":
            MessageLookupByLibrary.simpleMessage("Todos los Artistas"),
        "allConsentsCompleted": MessageLookupByLibrary.simpleMessage(
            "Todos los formularios de consentimiento completados"),
        "allOtherStencils":
            MessageLookupByLibrary.simpleMessage("Otras Plantillas"),
        "allSources": MessageLookupByLibrary.simpleMessage("Todas las Fuentes"),
        "allStencils":
            MessageLookupByLibrary.simpleMessage("Todas las Plantillas"),
        "alreadyOffered":
            MessageLookupByLibrary.simpleMessage("Ya has ofertado"),
        "alreadySubmittedOffer":
            MessageLookupByLibrary.simpleMessage("Ya has enviado una oferta"),
        "and": MessageLookupByLibrary.simpleMessage("y"),
        "anonymous": MessageLookupByLibrary.simpleMessage("Anónimo"),
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
        "apply": MessageLookupByLibrary.simpleMessage("Aplicar"),
        "appointmentCanceled":
            MessageLookupByLibrary.simpleMessage("Cita cancelada"),
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
        "appointmentNotFound":
            MessageLookupByLibrary.simpleMessage("Cita no encontrada"),
        "appointmentRescheduled":
            MessageLookupByLibrary.simpleMessage("Cita reagendada"),
        "appointmentsAvailable":
            MessageLookupByLibrary.simpleMessage("Citas disponibles"),
        "april": MessageLookupByLibrary.simpleMessage("Abril"),
        "areYouSureDelete": MessageLookupByLibrary.simpleMessage(
            "¿Estás seguro que deseas eliminar"),
        "areYouSureLogout": MessageLookupByLibrary.simpleMessage(
            "¿Estás seguro de que deseas cerrar sesión?"),
        "areYouSureYouWantToDeleteTheseWorks":
            MessageLookupByLibrary.simpleMessage(
                "¿Estás seguro que deseas eliminar estos trabajos?"),
        "areYouSureYouWantToDeleteThisStencil":
            MessageLookupByLibrary.simpleMessage(
                "¿Estás seguro que deseas eliminar esta plantilla?"),
        "areYouSureYouWantToDeleteThisWork":
            MessageLookupByLibrary.simpleMessage(
                "¿Estás seguro que deseas eliminar este trabajo?"),
        "artist": MessageLookupByLibrary.simpleMessage("Artista"),
        "artistFound": m0,
        "artistLabel": m1,
        "artistProfile":
            MessageLookupByLibrary.simpleMessage("Perfil del Artista"),
        "artistUpdatedOfferCost": m2,
        "artisticDisagreement":
            MessageLookupByLibrary.simpleMessage("Desacuerdo artístico"),
        "artistsFound": m3,
        "attachStencilOrGeneratedDesignHint": MessageLookupByLibrary.simpleMessage(
            "Puedes adjuntar una plantilla o un diseño generado a tu cotización"),
        "august": MessageLookupByLibrary.simpleMessage("Agosto"),
        "averageRating":
            MessageLookupByLibrary.simpleMessage("Calificación Promedio"),
        "awaitingArtist":
            MessageLookupByLibrary.simpleMessage("Esperando Artista"),
        "awaitingCustomer":
            MessageLookupByLibrary.simpleMessage("Esperando Cliente"),
        "awaitingReply":
            MessageLookupByLibrary.simpleMessage("Esperando Respuesta"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Regresar a la galería"),
        "backToSearch":
            MessageLookupByLibrary.simpleMessage("Volver a Búsqueda"),
        "backToStencils":
            MessageLookupByLibrary.simpleMessage("Volver a Plantillas"),
        "backToTattoos":
            MessageLookupByLibrary.simpleMessage("Volver a Tatuajes"),
        "barber": MessageLookupByLibrary.simpleMessage("Barbería"),
        "best": MessageLookupByLibrary.simpleMessage("Mejor"),
        "between": MessageLookupByLibrary.simpleMessage("entre"),
        "beyondExpertise":
            MessageLookupByLibrary.simpleMessage("Fuera de mi especialidad"),
        "bookAppointment": MessageLookupByLibrary.simpleMessage("Agendar cita"),
        "budget": MessageLookupByLibrary.simpleMessage("Presupuesto"),
        "callArtist": MessageLookupByLibrary.simpleMessage("Llamar al artista"),
        "camera": MessageLookupByLibrary.simpleMessage("Cámara"),
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
        "canceled": MessageLookupByLibrary.simpleMessage("Cancelada"),
        "canceledTheQuotation":
            MessageLookupByLibrary.simpleMessage("canceló la cotización"),
        "cancellationReason":
            MessageLookupByLibrary.simpleMessage("Motivo de Cancelación"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Cancelado"),
        "cannotDeleteLastLocation": MessageLookupByLibrary.simpleMessage(
            "No se puede eliminar la última ubicación. Los artistas deben tener al menos una ubicación."),
        "cannotOpenDetailsRightNowTryAgainLater":
            MessageLookupByLibrary.simpleMessage(
                "No se pueden abrir los detalles en este momento. Inténtalo de nuevo más tarde."),
        "cannotSelectStencilAndDesign": MessageLookupByLibrary.simpleMessage(
            "No puedes seleccionar una plantilla y un diseño a la vez"),
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
        "changedMyMind":
            MessageLookupByLibrary.simpleMessage("Cambié de opinión"),
        "changedStatusFrom":
            MessageLookupByLibrary.simpleMessage("cambió el estado de"),
        "characters": MessageLookupByLibrary.simpleMessage("caracteres"),
        "chatDirectlyWithArtist": MessageLookupByLibrary.simpleMessage(
            "Chatear directamente con el artista"),
        "chooseGeneratedDesign":
            MessageLookupByLibrary.simpleMessage("Elegir diseño generado"),
        "chooseImage": MessageLookupByLibrary.simpleMessage("Elegir Imagen"),
        "chooseStyle": MessageLookupByLibrary.simpleMessage("Elige un estilo"),
        "city": MessageLookupByLibrary.simpleMessage("Ciudad"),
        "clear": MessageLookupByLibrary.simpleMessage("Limpiar"),
        "clearFilter": MessageLookupByLibrary.simpleMessage("Limpiar Filtro"),
        "clearFilters": MessageLookupByLibrary.simpleMessage("Limpiar Filtros"),
        "clearSearch": MessageLookupByLibrary.simpleMessage("Limpiar búsqueda"),
        "clearSelection":
            MessageLookupByLibrary.simpleMessage("Limpiar Selección"),
        "close": MessageLookupByLibrary.simpleMessage("Cerrar"),
        "collapse": MessageLookupByLibrary.simpleMessage("Colapsar"),
        "comment": MessageLookupByLibrary.simpleMessage("Comentar"),
        "completed": MessageLookupByLibrary.simpleMessage("Completada"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirmar"),
        "confirmDeletion":
            MessageLookupByLibrary.simpleMessage("Confirmar Eliminación"),
        "confirmDeletionMessage": MessageLookupByLibrary.simpleMessage(
            "¿Estás seguro de que deseas eliminar tu cuenta? Esta acción no se puede deshacer."),
        "confirmEvent":
            MessageLookupByLibrary.simpleMessage("Confirmar evento"),
        "confirmEventMessage": MessageLookupByLibrary.simpleMessage(
            "¿Estás seguro que deseas confirmar este evento?"),
        "confirmLogout":
            MessageLookupByLibrary.simpleMessage("Confirmar Cierre de Sesión"),
        "confirmNewPassword":
            MessageLookupByLibrary.simpleMessage("Confirmar nueva contraseña"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirmar contraseña"),
        "confirmTimeSelection":
            MessageLookupByLibrary.simpleMessage("Confirmar Selección de Hora"),
        "confirmationPending":
            MessageLookupByLibrary.simpleMessage("Confirmación Pendiente"),
        "confirmed": MessageLookupByLibrary.simpleMessage("Confirmado"),
        "conflictingEvent": MessageLookupByLibrary.simpleMessage(
            "Esta hora entra en conflicto con un evento existente"),
        "consentFormDescription": MessageLookupByLibrary.simpleMessage(
            "Por favor revisa y completa este formulario de consentimiento"),
        "consentForms": MessageLookupByLibrary.simpleMessage(
            "Formularios de Consentimiento"),
        "consentProgress":
            MessageLookupByLibrary.simpleMessage("Progreso de Consentimiento"),
        "consentRequired":
            MessageLookupByLibrary.simpleMessage("Consentimiento Requerido"),
        "consentTemplates": MessageLookupByLibrary.simpleMessage(
            "Plantillas de Consentimiento"),
        "consents": MessageLookupByLibrary.simpleMessage("Consentimientos"),
        "contactArtist": MessageLookupByLibrary.simpleMessage(
            "Por favor, contacta al artista para más detalles."),
        "contactInfo":
            MessageLookupByLibrary.simpleMessage("Información de Contacto"),
        "contactInformation":
            MessageLookupByLibrary.simpleMessage("Información de Contacto"),
        "continue_": MessageLookupByLibrary.simpleMessage("Continuar"),
        "copiedToClipboard":
            MessageLookupByLibrary.simpleMessage("Copiado al portapapeles"),
        "couldNotGetLocation": MessageLookupByLibrary.simpleMessage(
            "No se pudo obtener la ubicación"),
        "couldNotGetLocationPleaseRetry": MessageLookupByLibrary.simpleMessage(
            "No se pudo obtener tu ubicación. Por favor intenta nuevamente."),
        "couldNotLoadImage":
            MessageLookupByLibrary.simpleMessage("No se pudo cargar la imagen"),
        "couldNotPickImage": m4,
        "createEvent": MessageLookupByLibrary.simpleMessage("Crear Evento"),
        "createFirstTemplate":
            MessageLookupByLibrary.simpleMessage("Crear tu primera plantilla"),
        "createNewTag":
            MessageLookupByLibrary.simpleMessage("Crear nueva etiqueta"),
        "createNewTemplate":
            MessageLookupByLibrary.simpleMessage("Crear Nueva Plantilla"),
        "createOpenQuotation":
            MessageLookupByLibrary.simpleMessage("Crear Cotización Abierta"),
        "createQuotation":
            MessageLookupByLibrary.simpleMessage("Crear Cotización"),
        "createQuotationForTattoo":
            MessageLookupByLibrary.simpleMessage("Crear Cotización"),
        "createYourOwnDesign":
            MessageLookupByLibrary.simpleMessage("Crea tu propio diseño"),
        "created": MessageLookupByLibrary.simpleMessage("Creada"),
        "createdAt": MessageLookupByLibrary.simpleMessage("Creado en"),
        "currency": MessageLookupByLibrary.simpleMessage("CLP"),
        "currentPassword":
            MessageLookupByLibrary.simpleMessage("Contraseña actual"),
        "currentStatus": MessageLookupByLibrary.simpleMessage("Estado Actual"),
        "customRange":
            MessageLookupByLibrary.simpleMessage("Rango Personalizado"),
        "customer": MessageLookupByLibrary.simpleMessage("Cliente"),
        "customerLookingForOffers": MessageLookupByLibrary.simpleMessage(
            "¡El cliente está buscando ofertas!"),
        "date": MessageLookupByLibrary.simpleMessage("Fecha"),
        "day": MessageLookupByLibrary.simpleMessage("Día"),
        "daysAgo": m5,
        "december": MessageLookupByLibrary.simpleMessage("Diciembre"),
        "delete": MessageLookupByLibrary.simpleMessage("Eliminar"),
        "deleteAccount":
            MessageLookupByLibrary.simpleMessage("Eliminar Cuenta"),
        "deleteAccountWarning": MessageLookupByLibrary.simpleMessage(
            "¿Estás seguro de que deseas eliminar tu cuenta? Esta acción es irreversible y eliminará todos los datos asociados a tu cuenta."),
        "deleteLocation":
            MessageLookupByLibrary.simpleMessage("Eliminar Ubicación"),
        "deleteSelectedWorks": MessageLookupByLibrary.simpleMessage(
            "Eliminar Trabajos Seleccionados"),
        "deleteStencil":
            MessageLookupByLibrary.simpleMessage("Eliminar Plantilla"),
        "deleteWork": MessageLookupByLibrary.simpleMessage("Eliminar Trabajo"),
        "describeYourTattoo":
            MessageLookupByLibrary.simpleMessage("Describe tu tatuaje"),
        "describeYourTattooIdea":
            MessageLookupByLibrary.simpleMessage("Describe tu idea de tatuaje"),
        "description": MessageLookupByLibrary.simpleMessage("Descripción"),
        "designAddedToFavorites":
            MessageLookupByLibrary.simpleMessage("Diseño agregado a favoritos"),
        "designRemovedFromFavorites": MessageLookupByLibrary.simpleMessage(
            "Diseño removido de favoritos"),
        "designSavedToYourGeneratedDesigns":
            MessageLookupByLibrary.simpleMessage(
                "Diseño guardado en tus diseños generados"),
        "direct": MessageLookupByLibrary.simpleMessage("Directas"),
        "directQuotations":
            MessageLookupByLibrary.simpleMessage("Cotizaciones Directas"),
        "directions": MessageLookupByLibrary.simpleMessage("Cómo llegar"),
        "done": MessageLookupByLibrary.simpleMessage("Hecho"),
        "duration": MessageLookupByLibrary.simpleMessage("Duración"),
        "durationCannotBeZero": MessageLookupByLibrary.simpleMessage(
            "La duración no puede ser cero"),
        "durationMustBePositive": MessageLookupByLibrary.simpleMessage(
            "La duración debe ser positiva"),
        "edit": MessageLookupByLibrary.simpleMessage("Editar"),
        "editEvent": MessageLookupByLibrary.simpleMessage("Editar Evento"),
        "editEventWarning": MessageLookupByLibrary.simpleMessage(
            "¿Estás seguro de que deseas editar este evento?"),
        "editLocation":
            MessageLookupByLibrary.simpleMessage("Editar Ubicación"),
        "editOffer": MessageLookupByLibrary.simpleMessage("Editar oferta"),
        "editProfile": MessageLookupByLibrary.simpleMessage("Editar Perfil"),
        "editStencil": MessageLookupByLibrary.simpleMessage("Editar Plantilla"),
        "editWork": MessageLookupByLibrary.simpleMessage("Editar Trabajo"),
        "email": MessageLookupByLibrary.simpleMessage("Correo electrónico"),
        "emptyTattooGeneratorMessage": MessageLookupByLibrary.simpleMessage(
            "Ingresa una descripción y elige un estilo\npara generar diseños de tatuajes"),
        "enableLocationServicesAndPermissions":
            MessageLookupByLibrary.simpleMessage(
                "Habilitar servicios de ubicación y permisos"),
        "end": MessageLookupByLibrary.simpleMessage("Fin"),
        "endDate": MessageLookupByLibrary.simpleMessage("Fecha de Fin"),
        "endHour": MessageLookupByLibrary.simpleMessage("Hora de fin"),
        "endTime": MessageLookupByLibrary.simpleMessage("Hora de Fin"),
        "enterAddress":
            MessageLookupByLibrary.simpleMessage("Ingresa la dirección"),
        "enterDistanceKm":
            MessageLookupByLibrary.simpleMessage("Ingresa distancia en km"),
        "enterLocationName": MessageLookupByLibrary.simpleMessage(
            "Ingresa el nombre de la ubicación"),
        "enterSearchTermOrSelectTags": MessageLookupByLibrary.simpleMessage(
            "Ingresa término de búsqueda o selecciona etiquetas"),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
        "errorCreatingQuotation":
            MessageLookupByLibrary.simpleMessage("Error al crear cotización"),
        "errorLoadingAvailableTimeSlots": MessageLookupByLibrary.simpleMessage(
            "Error al cargar los horarios disponibles"),
        "errorLoadingEventDetails": m6,
        "errorLoadingEvents": m7,
        "errorLoadingImage":
            MessageLookupByLibrary.simpleMessage("Error al cargar la imagen"),
        "errorLoadingOpenQuotations": MessageLookupByLibrary.simpleMessage(
            "Error al cargar las cotizaciones abiertas"),
        "errorLoadingOpenQuotationsWithMessage": m8,
        "errorLoadingPortfolio": MessageLookupByLibrary.simpleMessage(
            "Error al cargar el portafolio"),
        "errorLoadingQuotationDetails": MessageLookupByLibrary.simpleMessage(
            "Error al cargar los detalles de la cotización"),
        "errorLoadingStencils":
            MessageLookupByLibrary.simpleMessage("Error Cargando Plantillas"),
        "errorLoadingWorks":
            MessageLookupByLibrary.simpleMessage("Error al cargar trabajos"),
        "errorMsgEndTimeMustBeAfterStart": MessageLookupByLibrary.simpleMessage(
            "La hora de fin debe ser después de la hora de inicio."),
        "errorMsgEventCreationFailed": MessageLookupByLibrary.simpleMessage(
            "La creación del evento falló. Por favor, inténtalo de nuevo."),
        "errorMsgGuestValidationError": MessageLookupByLibrary.simpleMessage(
            "Por favor seleccione un invitado"),
        "errorMsgHoursValidationError": MessageLookupByLibrary.simpleMessage(
            "Por favor seleccione una hora"),
        "errorMsgInvalidTimeFormat": MessageLookupByLibrary.simpleMessage(
            "Formato de hora inválido. Por favor, usa HH:mm."),
        "errorMsgNotesValidationError": MessageLookupByLibrary.simpleMessage(
            "Notas superan el límite de caracteres"),
        "estimatedBudgetOptional": MessageLookupByLibrary.simpleMessage(
            "Presupuesto estimado (opcional)"),
        "estimatedCost": MessageLookupByLibrary.simpleMessage("Costo Estimado"),
        "estimatedCostChangedFrom":
            MessageLookupByLibrary.simpleMessage("El costo estimado cambió de"),
        "estimatedCostDisclaimer": MessageLookupByLibrary.simpleMessage(
            "El costo estimado es solo una estimación y puede variar según el trabajo real"),
        "estimatedCostLabel":
            MessageLookupByLibrary.simpleMessage("Costo estimado (CLP)"),
        "estimatedDuration":
            MessageLookupByLibrary.simpleMessage("Duración estimada"),
        "eventColor": MessageLookupByLibrary.simpleMessage("Color del Evento"),
        "eventCreatedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Evento creado con éxito."),
        "eventDetails":
            MessageLookupByLibrary.simpleMessage("Detalles del Evento"),
        "eventLocation":
            MessageLookupByLibrary.simpleMessage("Ubicación del Evento"),
        "eventOverlap":
            MessageLookupByLibrary.simpleMessage("Superposición de Eventos"),
        "eventOverlapMessage": MessageLookupByLibrary.simpleMessage(
            "Este evento se superpone con un evento existente. ¿Deseas continuar?"),
        "eventTitle": MessageLookupByLibrary.simpleMessage("Título del Evento"),
        "eventUpdatedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Evento actualizado con éxito."),
        "exampleAmount": MessageLookupByLibrary.simpleMessage("Ej: 50000"),
        "expand": MessageLookupByLibrary.simpleMessage("Expandir"),
        "explore": MessageLookupByLibrary.simpleMessage("Explorar"),
        "exploreArtists":
            MessageLookupByLibrary.simpleMessage("Explorar Artistas"),
        "exploreDesignsAndArtistWorks": MessageLookupByLibrary.simpleMessage(
            "Explora diseños y trabajos de artistas"),
        "exploreInspiration":
            MessageLookupByLibrary.simpleMessage("Explora inspiración"),
        "extraInfo":
            MessageLookupByLibrary.simpleMessage("Información Adicional"),
        "favorites": MessageLookupByLibrary.simpleMessage("Favoritos"),
        "feature": MessageLookupByLibrary.simpleMessage("Destacar"),
        "featured": MessageLookupByLibrary.simpleMessage("Destacada"),
        "featuredArtist":
            MessageLookupByLibrary.simpleMessage("Artista Destacado"),
        "featuredArtists":
            MessageLookupByLibrary.simpleMessage("Artistas Destacados"),
        "featuredStencil":
            MessageLookupByLibrary.simpleMessage("Plantilla Destacada"),
        "featuredStencils":
            MessageLookupByLibrary.simpleMessage("Plantillas Destacadas"),
        "featuredWork":
            MessageLookupByLibrary.simpleMessage("Trabajo Destacado"),
        "featuredWorks":
            MessageLookupByLibrary.simpleMessage("Trabajos Destacados"),
        "february": MessageLookupByLibrary.simpleMessage("Febrero"),
        "fieldRequired":
            MessageLookupByLibrary.simpleMessage("Este campo es requerido"),
        "filter": MessageLookupByLibrary.simpleMessage("Filtrar"),
        "filterBySource":
            MessageLookupByLibrary.simpleMessage("Filtrar por Fuente"),
        "filteringBySource": m9,
        "filteringByTag": m10,
        "filters": MessageLookupByLibrary.simpleMessage("Filtros"),
        "findDesignsAndTattoosMadeByArtists":
            MessageLookupByLibrary.simpleMessage(
                "Encuentra diseños y tatuajes hechos por artistas"),
        "findingArtists":
            MessageLookupByLibrary.simpleMessage("Buscando Artistas..."),
        "follow": MessageLookupByLibrary.simpleMessage("Seguir"),
        "follower": m11,
        "followers": MessageLookupByLibrary.simpleMessage("Seguidores"),
        "following": MessageLookupByLibrary.simpleMessage("Seguidos"),
        "foundAnotherArtist":
            MessageLookupByLibrary.simpleMessage("Encontré otro artista"),
        "friday": MessageLookupByLibrary.simpleMessage("Viernes"),
        "from": MessageLookupByLibrary.simpleMessage("Desde"),
        "fullName": MessageLookupByLibrary.simpleMessage("Nombre completo"),
        "gallery": MessageLookupByLibrary.simpleMessage("Galería"),
        "generalTerms":
            MessageLookupByLibrary.simpleMessage("Términos Generales"),
        "generate": MessageLookupByLibrary.simpleMessage("Generar"),
        "generateNewDesign":
            MessageLookupByLibrary.simpleMessage("Generar nuevo diseño"),
        "generateTattoo":
            MessageLookupByLibrary.simpleMessage("Generar Tatuaje"),
        "generateTattooDesignsWithAI": MessageLookupByLibrary.simpleMessage(
            "Genera diseños de tatuajes con IA"),
        "genres": MessageLookupByLibrary.simpleMessage("Géneros"),
        "getArtistActionText":
            MessageLookupByLibrary.simpleMessage("Obtener Artista"),
        "goBack": MessageLookupByLibrary.simpleMessage("Volver"),
        "guest": MessageLookupByLibrary.simpleMessage("Invitado"),
        "haircut": MessageLookupByLibrary.simpleMessage("Corte de Pelo"),
        "hidden": MessageLookupByLibrary.simpleMessage("Oculta"),
        "hide": MessageLookupByLibrary.simpleMessage("Ocultar"),
        "hideStencil":
            MessageLookupByLibrary.simpleMessage("Ocultar Plantilla"),
        "hideWork": MessageLookupByLibrary.simpleMessage("Ocultar Trabajo"),
        "hidingHiddenStencils": MessageLookupByLibrary.simpleMessage(
            "Ocultando plantillas ocultas"),
        "history": MessageLookupByLibrary.simpleMessage("Historial"),
        "hour": MessageLookupByLibrary.simpleMessage("Hora"),
        "hours": MessageLookupByLibrary.simpleMessage("horas"),
        "hoursAgo": m12,
        "hoursAndMinutes": m13,
        "hoursv2": m14,
        "id": MessageLookupByLibrary.simpleMessage("ID"),
        "imageRelease":
            MessageLookupByLibrary.simpleMessage("Liberación de Imagen"),
        "inProgress": MessageLookupByLibrary.simpleMessage("En progreso"),
        "inspiration": MessageLookupByLibrary.simpleMessage("Inspiración"),
        "insufficientDetails":
            MessageLookupByLibrary.simpleMessage("Detalles insuficientes"),
        "invalidNumber":
            MessageLookupByLibrary.simpleMessage("Número Inválido"),
        "invalidRange": MessageLookupByLibrary.simpleMessage("Rango Inválido"),
        "january": MessageLookupByLibrary.simpleMessage("Enero"),
        "july": MessageLookupByLibrary.simpleMessage("Julio"),
        "june": MessageLookupByLibrary.simpleMessage("Junio"),
        "justNow": MessageLookupByLibrary.simpleMessage("Ahora mismo"),
        "km": MessageLookupByLibrary.simpleMessage("km"),
        "kmAway": MessageLookupByLibrary.simpleMessage("km de distancia"),
        "language": MessageLookupByLibrary.simpleMessage("Idioma"),
        "lastUpdated":
            MessageLookupByLibrary.simpleMessage("Última Actualización"),
        "leaveReview": MessageLookupByLibrary.simpleMessage("Dejar reseña"),
        "legal": MessageLookupByLibrary.simpleMessage("Legal"),
        "likes": MessageLookupByLibrary.simpleMessage("Me gusta"),
        "loadMore": MessageLookupByLibrary.simpleMessage("Cargar Más"),
        "loadingAppointmentDetails": MessageLookupByLibrary.simpleMessage(
            "Cargando detalles de la cita"),
        "locale": MessageLookupByLibrary.simpleMessage("es_CL"),
        "location": MessageLookupByLibrary.simpleMessage("Ubicación"),
        "locationDetails":
            MessageLookupByLibrary.simpleMessage("Detalles de la Ubicación"),
        "locationName":
            MessageLookupByLibrary.simpleMessage("Nombre de la Ubicación"),
        "locationPermissionRequired": MessageLookupByLibrary.simpleMessage(
            "Permiso de ubicación requerido"),
        "locationServices":
            MessageLookupByLibrary.simpleMessage("Servicios de ubicación"),
        "locationServicesDescription": MessageLookupByLibrary.simpleMessage(
            "Habilitar o deshabilitar servicios de ubicación."),
        "logOut": MessageLookupByLibrary.simpleMessage("Cerrar sesión"),
        "logout": MessageLookupByLibrary.simpleMessage("Cerrar Sesión"),
        "makeup": MessageLookupByLibrary.simpleMessage("Makeup"),
        "manageLocations":
            MessageLookupByLibrary.simpleMessage("Administrar Ubicaciones"),
        "manageWorks":
            MessageLookupByLibrary.simpleMessage("Administrar Trabajos"),
        "mapViewComingSoon":
            MessageLookupByLibrary.simpleMessage("Vista de Mapa Próximamente"),
        "mapViewDescription": MessageLookupByLibrary.simpleMessage(
            "La vista de mapa estará disponible pronto para ayudarte a encontrar artistas cercanos a tu ubicación."),
        "mapViewInfo": MessageLookupByLibrary.simpleMessage(
            "Mientras tanto, puedes explorar todos los artistas disponibles en la vista de lista."),
        "march": MessageLookupByLibrary.simpleMessage("Marzo"),
        "maxDistance": m15,
        "maxTravelDistanceKm": MessageLookupByLibrary.simpleMessage(
            "Distancia máxima de viaje (km)"),
        "may": MessageLookupByLibrary.simpleMessage("Mayo"),
        "memberSince": MessageLookupByLibrary.simpleMessage("Miembro desde"),
        "message": MessageLookupByLibrary.simpleMessage("Mensaje"),
        "messageCustomer":
            MessageLookupByLibrary.simpleMessage("Mensaje al cliente"),
        "messagePreview": m16,
        "messages": MessageLookupByLibrary.simpleMessage("mensajes"),
        "messagesCount": m17,
        "meters": MessageLookupByLibrary.simpleMessage("metros"),
        "minDescriptionLengthRequired": m18,
        "minimumRating": m19,
        "minute": MessageLookupByLibrary.simpleMessage("minuto"),
        "minutes": MessageLookupByLibrary.simpleMessage("minutos"),
        "minutesAgo": m20,
        "minutesv2": m21,
        "monday": MessageLookupByLibrary.simpleMessage("Lunes"),
        "month": MessageLookupByLibrary.simpleMessage("Mes"),
        "monthsAgo": m22,
        "moreInfoAboutSizesPricesAvailability":
            MessageLookupByLibrary.simpleMessage(
                "Más información sobre tamaños, precios y disponibilidad"),
        "mostPopular": MessageLookupByLibrary.simpleMessage("Más Populares"),
        "mostRecent": MessageLookupByLibrary.simpleMessage("Más Recientes"),
        "myAppointments": MessageLookupByLibrary.simpleMessage("Mis Citas"),
        "myProfile": MessageLookupByLibrary.simpleMessage("Mi Perfil"),
        "n": MessageLookupByLibrary.simpleMessage("Nuevo"),
        "nail": MessageLookupByLibrary.simpleMessage("Nails"),
        "newPassword": MessageLookupByLibrary.simpleMessage("Nueva contraseña"),
        "newQuotation":
            MessageLookupByLibrary.simpleMessage("Nueva cotización"),
        "newRequest": MessageLookupByLibrary.simpleMessage("Nueva Solicitud"),
        "newRequests":
            MessageLookupByLibrary.simpleMessage("Nuevas Solicitudes"),
        "nextWeek": MessageLookupByLibrary.simpleMessage("Semana Siguiente"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noActiveSession": MessageLookupByLibrary.simpleMessage(
            "No se encontró una sesión activa"),
        "noApplicationsFound": MessageLookupByLibrary.simpleMessage(
            "No se encontraron solicitudes"),
        "noArtistsFound":
            MessageLookupByLibrary.simpleMessage("No se encontraron artistas"),
        "noAvailableTimeSlotsFound": MessageLookupByLibrary.simpleMessage(
            "No se encontraron horarios disponibles"),
        "noConsentRequired": MessageLookupByLibrary.simpleMessage(
            "No se requieren formularios de consentimiento para esta cita"),
        "noConsentTemplates": MessageLookupByLibrary.simpleMessage(
            "Aún no se han creado plantillas de consentimiento"),
        "noContactInfo": MessageLookupByLibrary.simpleMessage(
            "No hay información de contacto disponible"),
        "noDescription":
            MessageLookupByLibrary.simpleMessage("Sin descripción"),
        "noDesignsOnFavorites":
            MessageLookupByLibrary.simpleMessage("No hay diseños en favoritos"),
        "noDesignsOnHistory": MessageLookupByLibrary.simpleMessage(
            "No hay diseños en el historial"),
        "noDirectArtistRequestsFoundBody": MessageLookupByLibrary.simpleMessage(
            "No tienes solicitudes directas en este momento"),
        "noDirectArtistRequestsFoundTitle":
            MessageLookupByLibrary.simpleMessage("No hay solicitudes directas"),
        "noDirectCustomerQuotationsFoundBody":
            MessageLookupByLibrary.simpleMessage(
                "No tienes cotizaciones directas en este momento"),
        "noDirectCustomerQuotationsFoundTitle":
            MessageLookupByLibrary.simpleMessage(
                "No hay cotizaciones directas"),
        "noDistanceLimit":
            MessageLookupByLibrary.simpleMessage("Sin límite de distancia"),
        "noEventsForThisDay": MessageLookupByLibrary.simpleMessage(
            "No hay eventos para este día"),
        "noEventsToday": MessageLookupByLibrary.simpleMessage(
            "No hay eventos programados para hoy"),
        "noImageSelected": MessageLookupByLibrary.simpleMessage(
            "No se ha seleccionado ninguna imagen"),
        "noImagesAvailable":
            MessageLookupByLibrary.simpleMessage("No hay imágenes disponibles"),
        "noImagesGenerated":
            MessageLookupByLibrary.simpleMessage("No se generaron imágenes"),
        "noLocationsAvailable": MessageLookupByLibrary.simpleMessage(
            "No hay ubicaciones disponibles"),
        "noMapsApplicationAvailable": MessageLookupByLibrary.simpleMessage(
            "No hay aplicaciones de mapas disponibles"),
        "noMessagesYet":
            MessageLookupByLibrary.simpleMessage("Aún no hay mensajes"),
        "noNotificationsMessage": MessageLookupByLibrary.simpleMessage(
            "No tienes ninguna notificación todavía."),
        "noNotificationsTitle":
            MessageLookupByLibrary.simpleMessage("No hay notificaciones"),
        "noOffersReceived":
            MessageLookupByLibrary.simpleMessage("Aún no has recibido ofertas"),
        "noOffersYet":
            MessageLookupByLibrary.simpleMessage("Aún no hay ofertas"),
        "noOpenQuotationsFoundBody": MessageLookupByLibrary.simpleMessage(
            "No tienes cotizaciones abiertas en este momento"),
        "noOpenQuotationsFoundTitle": MessageLookupByLibrary.simpleMessage(
            "No hay cotizaciones abiertas"),
        "noParticipatingQuotationsFoundBody":
            MessageLookupByLibrary.simpleMessage(
                "No estás participando en ninguna cotización en este momento"),
        "noParticipatingQuotationsFoundTitle":
            MessageLookupByLibrary.simpleMessage(
                "No hay cotizaciones participantes"),
        "noPortfolio": MessageLookupByLibrary.simpleMessage(
            "No hay portafolio disponible"),
        "noPortfolioShared": MessageLookupByLibrary.simpleMessage(
            "Aún no hay portafolio compartido"),
        "noQuotationsFound": MessageLookupByLibrary.simpleMessage(
            "No se encontraron cotizaciones"),
        "noRequestsFound": MessageLookupByLibrary.simpleMessage(
            "No se encontraron solicitudes"),
        "noResultsFound": MessageLookupByLibrary.simpleMessage(
            "No se encontraron resultados"),
        "noReviews": MessageLookupByLibrary.simpleMessage("Aún no hay reseñas"),
        "noReviewsYet":
            MessageLookupByLibrary.simpleMessage("Aún no hay reseñas"),
        "noServicesAvailable": MessageLookupByLibrary.simpleMessage(
            "No hay servicios disponibles"),
        "noStencils": MessageLookupByLibrary.simpleMessage(
            "No hay plantillas disponibles"),
        "noStencilsAddedYet": MessageLookupByLibrary.simpleMessage(
            "No hay stencils agregados aún"),
        "noStencilsFound": MessageLookupByLibrary.simpleMessage(
            "No se encontraron plantillas"),
        "noStencilsFoundWithCurrentCriteria":
            MessageLookupByLibrary.simpleMessage(
                "No se encontraron plantillas con los criterios actuales"),
        "noStencilsShared": MessageLookupByLibrary.simpleMessage(
            "Aún no hay plantillas compartidas"),
        "noStencilsWithTag": m23,
        "noStencilsYet":
            MessageLookupByLibrary.simpleMessage("Aún No Hay Plantillas"),
        "noStudioPhotoAvailable": MessageLookupByLibrary.simpleMessage(
            "No hay foto del estudio disponible"),
        "noTattooWorksAddedYet": MessageLookupByLibrary.simpleMessage(
            "No hay trabajos de tatuaje agregados aún"),
        "noTattoosFoundWithCurrentCriteria":
            MessageLookupByLibrary.simpleMessage(
                "No se encontraron tatuajes con los criterios actuales"),
        "noUnavailableTimesConfigured": MessageLookupByLibrary.simpleMessage(
            "No hay tiempos no disponibles configurados"),
        "noWorkEvidence":
            MessageLookupByLibrary.simpleMessage("No hay evidencia de trabajo"),
        "noWorks":
            MessageLookupByLibrary.simpleMessage("No hay trabajos disponibles"),
        "noWorksFound":
            MessageLookupByLibrary.simpleMessage("No Se Encontraron Trabajos"),
        "noWorksShared": MessageLookupByLibrary.simpleMessage(
            "Aún no hay trabajos compartidos"),
        "notAttended": MessageLookupByLibrary.simpleMessage("No se presentó"),
        "notAvailable": MessageLookupByLibrary.simpleMessage("No disponible"),
        "notLoggedIn":
            MessageLookupByLibrary.simpleMessage("No has iniciado sesión"),
        "notSelected": MessageLookupByLibrary.simpleMessage("No seleccionado"),
        "notSpecified": MessageLookupByLibrary.simpleMessage("No especificado"),
        "notWhatIWanted":
            MessageLookupByLibrary.simpleMessage("No es lo que quería"),
        "note": MessageLookupByLibrary.simpleMessage("Nota"),
        "notification": MessageLookupByLibrary.simpleMessage("Notificación"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notificaciones"),
        "notificationsDescription": MessageLookupByLibrary.simpleMessage(
            "Habilitar o deshabilitar notificaciones."),
        "notificationsPermissionRequired": MessageLookupByLibrary.simpleMessage(
            "Permiso de notificaciones requerido"),
        "november": MessageLookupByLibrary.simpleMessage("Noviembre"),
        "october": MessageLookupByLibrary.simpleMessage("Octubre"),
        "of5": MessageLookupByLibrary.simpleMessage("de 5"),
        "offerAcceptedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Oferta aceptada exitosamente"),
        "offerCost": MessageLookupByLibrary.simpleMessage("Costo de la oferta"),
        "offerSubmitted":
            MessageLookupByLibrary.simpleMessage("Oferta enviada"),
        "offerSubmittedMessage": MessageLookupByLibrary.simpleMessage(
            "Tu oferta ha sido enviada exitosamente al cliente."),
        "offerSubmittedTitle":
            MessageLookupByLibrary.simpleMessage("¡Oferta enviada!"),
        "offerSubmittedWithAmount": m24,
        "offered": MessageLookupByLibrary.simpleMessage("Ofrecido"),
        "offers": MessageLookupByLibrary.simpleMessage("Ofertas"),
        "offersAppearHere": MessageLookupByLibrary.simpleMessage(
            "Las ofertas aparecerán aquí cuando las recibas"),
        "offersCount": m25,
        "offersReceived": m26,
        "offersReceivedTitle":
            MessageLookupByLibrary.simpleMessage("Ofertas recibidas"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "onlyStencilsFound": MessageLookupByLibrary.simpleMessage(
            "Solo se encontraron plantillas"),
        "onlyWorksFound": MessageLookupByLibrary.simpleMessage(
            "Solo se encontraron trabajos"),
        "open": MessageLookupByLibrary.simpleMessage("Abierto"),
        "openForReservations":
            MessageLookupByLibrary.simpleMessage("Abierto para Reservas"),
        "openForReservationsDescription": MessageLookupByLibrary.simpleMessage(
            "Permite que los clientes reserven citas"),
        "openQuotationCreatedSuccessfully":
            MessageLookupByLibrary.simpleMessage(
                "Cotización abierta creada exitosamente"),
        "openQuotationRequest": MessageLookupByLibrary.simpleMessage(
            "Solicitud de Cotización Abierta"),
        "openQuotationRequestDesc": MessageLookupByLibrary.simpleMessage(
            "Este cliente está buscando ofertas. Puedes enviar tu cotización para ganar este proyecto."),
        "openQuotations":
            MessageLookupByLibrary.simpleMessage("Cotizaciones Abiertas"),
        "openSettings":
            MessageLookupByLibrary.simpleMessage("Abrir Configuraciones"),
        "optional": MessageLookupByLibrary.simpleMessage("Opcional"),
        "optionalAddStencilOrDesign": MessageLookupByLibrary.simpleMessage(
            "Opcional: Agregar plantilla o diseño"),
        "optionalAttachDesign": MessageLookupByLibrary.simpleMessage(
            "Opcional: Adjuntar un diseño"),
        "other": MessageLookupByLibrary.simpleMessage("Otro"),
        "passwordChangedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Contraseña cambiada exitosamente"),
        "passwordTooShort": MessageLookupByLibrary.simpleMessage(
            "La contraseña es demasiado corta"),
        "passwordsDontMatch": MessageLookupByLibrary.simpleMessage(
            "Las contraseñas no coinciden"),
        "pending": MessageLookupByLibrary.simpleMessage("Pendiente"),
        "pendingSignature":
            MessageLookupByLibrary.simpleMessage("Pendiente de Firma"),
        "permissionRequired":
            MessageLookupByLibrary.simpleMessage("Permiso requerido"),
        "phone": MessageLookupByLibrary.simpleMessage("Teléfono"),
        "photoLibrary":
            MessageLookupByLibrary.simpleMessage("Galería de fotos"),
        "piercing": MessageLookupByLibrary.simpleMessage("Piercing"),
        "pleaseEnableGps":
            MessageLookupByLibrary.simpleMessage("Por favor activa el GPS"),
        "pleaseEnterATitle":
            MessageLookupByLibrary.simpleMessage("Por favor ingresa un título"),
        "pleaseEnterDescription": MessageLookupByLibrary.simpleMessage(
            "Por favor ingresa una descripción"),
        "pleaseEnterTravelRadius": MessageLookupByLibrary.simpleMessage(
            "Por favor ingresa un radio de viaje"),
        "pleaseEnterValidPositiveNumber": MessageLookupByLibrary.simpleMessage(
            "Por favor ingresa un número positivo válido"),
        "pleaseProvideReason": MessageLookupByLibrary.simpleMessage(
            "Por favor, proporciona una razón para la cancelación."),
        "pleaseSelectADateRange": MessageLookupByLibrary.simpleMessage(
            "Por favor selecciona un rango de fechas"),
        "pleaseSelectAnImage": MessageLookupByLibrary.simpleMessage(
            "Por favor selecciona una imagen"),
        "pleaseSelectTimeRange": MessageLookupByLibrary.simpleMessage(
            "Por favor, selecciona un rango de tiempo"),
        "pleaseSignConsents": MessageLookupByLibrary.simpleMessage(
            "Por favor firma los formularios de consentimiento requeridos antes de continuar"),
        "popularTags":
            MessageLookupByLibrary.simpleMessage("Etiquetas Populares"),
        "portfolio": MessageLookupByLibrary.simpleMessage("Portafolio"),
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
        "processingRequest": MessageLookupByLibrary.simpleMessage(
            "Estamos procesando tu solicitud..."),
        "profileImage":
            MessageLookupByLibrary.simpleMessage("Imagen de Perfil"),
        "proposedAppointment":
            MessageLookupByLibrary.simpleMessage("Cita propuesta"),
        "proposedDesign":
            MessageLookupByLibrary.simpleMessage("Diseño Propuesto"),
        "proposedDesigns":
            MessageLookupByLibrary.simpleMessage("Diseños Propuestos"),
        "proposedDesignsOptional": MessageLookupByLibrary.simpleMessage(
            "Diseños propuestos (opcional)"),
        "public": MessageLookupByLibrary.simpleMessage("Públicas"),
        "publicAgenda": MessageLookupByLibrary.simpleMessage("Agenda Pública"),
        "publicAgendaDescription": MessageLookupByLibrary.simpleMessage(
            "Permite que los clientes vean tu disponibilidad"),
        "quotation": MessageLookupByLibrary.simpleMessage("Cotización"),
        "quotationAcceptedSuccess": MessageLookupByLibrary.simpleMessage(
            "Oferta aceptada exitosamente"),
        "quotationCancelledSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Cotización cancelada exitosamente"),
        "quotationCreatedSuccessfullyDescription":
            MessageLookupByLibrary.simpleMessage(
                "Tu cotización ha sido creada exitosamente. Te notificaremos cuando sea revisada."),
        "quotationCreatedSuccessfullyTitle":
            MessageLookupByLibrary.simpleMessage(
                "Cotización creada exitosamente"),
        "quotationDate":
            MessageLookupByLibrary.simpleMessage("Fecha De Cotización"),
        "quotationDetails":
            MessageLookupByLibrary.simpleMessage("Detalles de la Cotización"),
        "quotationForStencilId": MessageLookupByLibrary.simpleMessage(
            "Cotización para plantilla ID"),
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
        "quotationStatusArtistOpen":
            MessageLookupByLibrary.simpleMessage("Abierta"),
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
        "quotationStatusCustomerOpen":
            MessageLookupByLibrary.simpleMessage("Abierta"),
        "quotationStatusCustomerPending":
            MessageLookupByLibrary.simpleMessage("Esperando Respuesta"),
        "quotationStatusCustomerQuoted":
            MessageLookupByLibrary.simpleMessage("Cotización Recibida"),
        "quotationStatusCustomerRejected":
            MessageLookupByLibrary.simpleMessage("Rechazado"),
        "quotations": MessageLookupByLibrary.simpleMessage("Cotizaciones"),
        "quote": MessageLookupByLibrary.simpleMessage("Cotización"),
        "quoteDetails":
            MessageLookupByLibrary.simpleMessage("Detalles de la Cotización"),
        "quoteThisDesign":
            MessageLookupByLibrary.simpleMessage("Cotizar Este Diseño"),
        "quoted": MessageLookupByLibrary.simpleMessage("Cotizado"),
        "quotedTheRequest":
            MessageLookupByLibrary.simpleMessage("Cotizó la solicitud"),
        "quotes": MessageLookupByLibrary.simpleMessage("Cotizaciones"),
        "range": MessageLookupByLibrary.simpleMessage("Rango"),
        "rating": MessageLookupByLibrary.simpleMessage("Calificación"),
        "reason": MessageLookupByLibrary.simpleMessage("Motivo"),
        "receivedOffers":
            MessageLookupByLibrary.simpleMessage("Ofertas Recibidas"),
        "receivedQuotation":
            MessageLookupByLibrary.simpleMessage("Cotización Recibida"),
        "receivedQuotations":
            MessageLookupByLibrary.simpleMessage("Cotizaciones Recibidas"),
        "referenceBudget": m27,
        "referenceBudgetHint":
            MessageLookupByLibrary.simpleMessage("Presupuesto de referencia"),
        "referenceImages":
            MessageLookupByLibrary.simpleMessage("Imágenes de Referencia"),
        "refresh": MessageLookupByLibrary.simpleMessage("Actualizar"),
        "reject": MessageLookupByLibrary.simpleMessage("Rechazar"),
        "rejectAppeal":
            MessageLookupByLibrary.simpleMessage("Rechazar Apelación"),
        "rejectEvent": MessageLookupByLibrary.simpleMessage("Rechazar evento"),
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
        "requestChange":
            MessageLookupByLibrary.simpleMessage("Solicitar Cambio"),
        "requestDetails":
            MessageLookupByLibrary.simpleMessage("Detalles de la Solicitud"),
        "requestQuotationForDesign": MessageLookupByLibrary.simpleMessage(
            "Solicitud de cotización para el diseño"),
        "requestQuote":
            MessageLookupByLibrary.simpleMessage("Solicitar Cotización"),
        "requests": MessageLookupByLibrary.simpleMessage("Solicitudes"),
        "required": MessageLookupByLibrary.simpleMessage("Requerido"),
        "requiredField":
            MessageLookupByLibrary.simpleMessage("Campo Requerido"),
        "reschedule": MessageLookupByLibrary.simpleMessage("Reagendar"),
        "rescheduled": MessageLookupByLibrary.simpleMessage("Reprogramada"),
        "reset": MessageLookupByLibrary.simpleMessage("Restablecer"),
        "resetRange": MessageLookupByLibrary.simpleMessage("Restablecer Rango"),
        "resetZoom": MessageLookupByLibrary.simpleMessage("Restablecer Zoom"),
        "respondToQuotation":
            MessageLookupByLibrary.simpleMessage("Responder Cotización"),
        "responded": MessageLookupByLibrary.simpleMessage("Aceptado"),
        "results": MessageLookupByLibrary.simpleMessage("Resultados"),
        "retry": MessageLookupByLibrary.simpleMessage("Reintentar"),
        "reviewAndSubmitOffer": MessageLookupByLibrary.simpleMessage(
            "Revisa los detalles y envía tu oferta para ganar este proyecto."),
        "reviewDetailsAndSubmitOffer": MessageLookupByLibrary.simpleMessage(
            "Revisa los detalles y envía tu oferta"),
        "reviewEachOffer": MessageLookupByLibrary.simpleMessage(
            "Revisa cada oferta y chatea con los artistas"),
        "reviewFunctionalityComingSoon": MessageLookupByLibrary.simpleMessage(
            "La funcionalidad de reseñas estará disponible pronto"),
        "reviewed": MessageLookupByLibrary.simpleMessage("Reseñada"),
        "reviews": MessageLookupByLibrary.simpleMessage("Reseñas"),
        "reviewsTotal": MessageLookupByLibrary.simpleMessage("reseñas"),
        "saturday": MessageLookupByLibrary.simpleMessage("Sábado"),
        "save": MessageLookupByLibrary.simpleMessage("Guardar"),
        "saveChanges": MessageLookupByLibrary.simpleMessage("Guardar Cambios"),
        "saveConfiguration":
            MessageLookupByLibrary.simpleMessage("Guardar Configuración"),
        "saveStencil":
            MessageLookupByLibrary.simpleMessage("Guardar Plantilla"),
        "saveWork": MessageLookupByLibrary.simpleMessage("Guardar Trabajo"),
        "scheduleAssistant":
            MessageLookupByLibrary.simpleMessage("Asistente de agenda"),
        "scheduleEvent": MessageLookupByLibrary.simpleMessage("Agendar cita"),
        "scheduleInfo":
            MessageLookupByLibrary.simpleMessage("Información de Agenda"),
        "scheduled": MessageLookupByLibrary.simpleMessage("Programada"),
        "schedulingConflict":
            MessageLookupByLibrary.simpleMessage("Conflicto de horarios"),
        "search": MessageLookupByLibrary.simpleMessage("Buscar"),
        "searchArtistPlaceholder": MessageLookupByLibrary.simpleMessage(
            "Buscar artistas, estilos o ubicaciones..."),
        "searchInspiration":
            MessageLookupByLibrary.simpleMessage("Buscar inspiración"),
        "searchInspirationForYourNextTattoo":
            MessageLookupByLibrary.simpleMessage(
                "Busca inspiración para tu próximo tatuaje"),
        "searchOrCreateTags":
            MessageLookupByLibrary.simpleMessage("Buscar o crear etiquetas"),
        "searchRadius":
            MessageLookupByLibrary.simpleMessage("Radio de búsqueda"),
        "searchTattoosStencilsOrTags": MessageLookupByLibrary.simpleMessage(
            "Buscar tatuajes, plantillas o etiquetas"),
        "searching": MessageLookupByLibrary.simpleMessage("Buscando..."),
        "seeLess": MessageLookupByLibrary.simpleMessage("Ver Menos"),
        "seeMore": MessageLookupByLibrary.simpleMessage("Ver Más"),
        "seeProfile": MessageLookupByLibrary.simpleMessage("Ver Perfil"),
        "seeReviews": MessageLookupByLibrary.simpleMessage("Ver Reseñas"),
        "selectDate": MessageLookupByLibrary.simpleMessage("Seleccionar Fecha"),
        "selectDateTime":
            MessageLookupByLibrary.simpleMessage("Seleccionar Fecha y Hora"),
        "selectDates":
            MessageLookupByLibrary.simpleMessage("Seleccionar Fechas"),
        "selectDuration":
            MessageLookupByLibrary.simpleMessage("Seleccionar Duración"),
        "selectEndTime":
            MessageLookupByLibrary.simpleMessage("Seleccionar Hora de Fin"),
        "selectGeneratedDesign":
            MessageLookupByLibrary.simpleMessage("Seleccionar Diseño Generado"),
        "selectMultiple":
            MessageLookupByLibrary.simpleMessage("Selección Múltiple"),
        "selectService":
            MessageLookupByLibrary.simpleMessage("Seleccionar servicio"),
        "selectStartTime":
            MessageLookupByLibrary.simpleMessage("Seleccionar Hora de Inicio"),
        "selectStencil":
            MessageLookupByLibrary.simpleMessage("Seleccionar Plantilla"),
        "selectTime": MessageLookupByLibrary.simpleMessage("Seleccionar Hora"),
        "selectValidTimeRange": MessageLookupByLibrary.simpleMessage(
            "Por favor, selecciona un rango de tiempo válido"),
        "selected": MessageLookupByLibrary.simpleMessage("Seleccionado"),
        "selectedDesign":
            MessageLookupByLibrary.simpleMessage("Diseño seleccionado"),
        "selectedGeneratedDesign": MessageLookupByLibrary.simpleMessage(
            "Diseño Generado Seleccionado"),
        "selectedStencil":
            MessageLookupByLibrary.simpleMessage("Plantilla Seleccionada"),
        "send": MessageLookupByLibrary.simpleMessage("Enviar"),
        "sendEmail": MessageLookupByLibrary.simpleMessage("Enviar correo"),
        "sendMessage": MessageLookupByLibrary.simpleMessage("Enviar Mensaje"),
        "sendMessageInApp":
            MessageLookupByLibrary.simpleMessage("Enviar mensaje en la app"),
        "sendOffer": MessageLookupByLibrary.simpleMessage("Enviar oferta"),
        "sentOffer": MessageLookupByLibrary.simpleMessage("Oferta enviada"),
        "september": MessageLookupByLibrary.simpleMessage("Septiembre"),
        "services": MessageLookupByLibrary.simpleMessage("Servicios"),
        "settings": MessageLookupByLibrary.simpleMessage("Ajustes"),
        "share": MessageLookupByLibrary.simpleMessage("Compartir"),
        "shareArtistProfile": MessageLookupByLibrary.simpleMessage(
            "Compartir Perfil del Artista"),
        "shortDescription":
            MessageLookupByLibrary.simpleMessage("Descripción Corta"),
        "show": MessageLookupByLibrary.simpleMessage("Mostrar"),
        "showHiddenWorks":
            MessageLookupByLibrary.simpleMessage("Mostrar Trabajos Ocultos"),
        "showOnlyAvailableResults": MessageLookupByLibrary.simpleMessage(
            "Mostrar solo resultados disponibles"),
        "showingAllStencils": MessageLookupByLibrary.simpleMessage(
            "Mostrando todas las plantillas"),
        "signConsent":
            MessageLookupByLibrary.simpleMessage("Firmar Consentimiento"),
        "signRequiredConsents": MessageLookupByLibrary.simpleMessage(
            "Firmar Consentimientos Requeridos"),
        "signed": MessageLookupByLibrary.simpleMessage("Firmado"),
        "source": MessageLookupByLibrary.simpleMessage("Fuente"),
        "specialties": MessageLookupByLibrary.simpleMessage("Especialidades"),
        "start": MessageLookupByLibrary.simpleMessage("Inicio"),
        "startChat": MessageLookupByLibrary.simpleMessage("Iniciar chat"),
        "startConversation": MessageLookupByLibrary.simpleMessage(
            "Comienza la conversación enviando un mensaje"),
        "startDate": MessageLookupByLibrary.simpleMessage("Fecha de Inicio"),
        "startHour": MessageLookupByLibrary.simpleMessage("Hora de inicio"),
        "startSearching":
            MessageLookupByLibrary.simpleMessage("Comenzar a buscar"),
        "startTime": MessageLookupByLibrary.simpleMessage("Hora de Inicio"),
        "state": MessageLookupByLibrary.simpleMessage("Estado"),
        "status": MessageLookupByLibrary.simpleMessage("Estado"),
        "statusAccepted": MessageLookupByLibrary.simpleMessage("Aceptado"),
        "statusAppealed": MessageLookupByLibrary.simpleMessage("Apelado"),
        "statusCanceled": MessageLookupByLibrary.simpleMessage("Cancelado"),
        "statusOpen": MessageLookupByLibrary.simpleMessage("Abierta"),
        "statusPending": MessageLookupByLibrary.simpleMessage("Pendiente"),
        "statusQuoted": MessageLookupByLibrary.simpleMessage("Cotizado"),
        "statusRejected": MessageLookupByLibrary.simpleMessage("Rechazado"),
        "statusWithText": m28,
        "stencil": MessageLookupByLibrary.simpleMessage("Plantilla"),
        "stencilCreatedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Plantilla creada exitosamente"),
        "stencilDeletedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Plantilla eliminada exitosamente"),
        "stencilDetails":
            MessageLookupByLibrary.simpleMessage("Detalles de la Plantilla"),
        "stencilGallery":
            MessageLookupByLibrary.simpleMessage("Galería de Plantillas"),
        "stencilUpdatedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Plantilla actualizada exitosamente"),
        "stencilWillBeHiddenFromPublicView":
            MessageLookupByLibrary.simpleMessage(
                "La plantilla será ocultada del público"),
        "stencilWillBeHighlightedInProfile":
            MessageLookupByLibrary.simpleMessage(
                "La plantilla será destacada en el perfil"),
        "stencils": MessageLookupByLibrary.simpleMessage("Plantillas"),
        "studioPhoto": MessageLookupByLibrary.simpleMessage("Foto del estudio"),
        "styles": MessageLookupByLibrary.simpleMessage("Estilos"),
        "submit": MessageLookupByLibrary.simpleMessage("Enviar"),
        "submitOffer": MessageLookupByLibrary.simpleMessage("Enviar oferta"),
        "submitOpenQuotation":
            MessageLookupByLibrary.simpleMessage("Enviar Cotización Abierta"),
        "submittingOffer":
            MessageLookupByLibrary.simpleMessage("Enviando oferta..."),
        "submittingOfferMessage": MessageLookupByLibrary.simpleMessage(
            "Por favor espera mientras se envía tu oferta."),
        "suggestedTags":
            MessageLookupByLibrary.simpleMessage("Etiquetas sugeridas"),
        "suggestions": MessageLookupByLibrary.simpleMessage("Sugerencias"),
        "sunday": MessageLookupByLibrary.simpleMessage("Domingo"),
        "swipe": MessageLookupByLibrary.simpleMessage("Desliza"),
        "switchToListView":
            MessageLookupByLibrary.simpleMessage("Ver Lista de Artistas"),
        "system": MessageLookupByLibrary.simpleMessage("Sistema"),
        "systemCancellationReason": MessageLookupByLibrary.simpleMessage(
            "Razón de Cancelación del Sistema"),
        "systemOfferUpdate": m29,
        "systemTimeout":
            MessageLookupByLibrary.simpleMessage("Tiempo de espera agotado"),
        "tags": MessageLookupByLibrary.simpleMessage("Etiquetas"),
        "tapToChangeImage":
            MessageLookupByLibrary.simpleMessage("Toca para cambiar la imagen"),
        "tapToSelectImage": MessageLookupByLibrary.simpleMessage(
            "Toca para seleccionar una imagen"),
        "tapToSign": MessageLookupByLibrary.simpleMessage("Toca para firmar"),
        "tattoo": MessageLookupByLibrary.simpleMessage("Tatuaje"),
        "tattooConsent":
            MessageLookupByLibrary.simpleMessage("Consentimiento de Tatuaje"),
        "tattooDescriptionHint": MessageLookupByLibrary.simpleMessage(
            "Ej. Silueta minimalista de lobo con patrones geométricos"),
        "tattooGenerator":
            MessageLookupByLibrary.simpleMessage("Generador de Tatuajes"),
        "tattooStyleAbstract":
            MessageLookupByLibrary.simpleMessage("Abstracto"),
        "tattooStyleBiomechanical":
            MessageLookupByLibrary.simpleMessage("Biomecánico"),
        "tattooStyleBlackwork":
            MessageLookupByLibrary.simpleMessage("Blackwork"),
        "tattooStyleCeltic": MessageLookupByLibrary.simpleMessage("Celta"),
        "tattooStyleChicano": MessageLookupByLibrary.simpleMessage("Chicano"),
        "tattooStyleDotwork": MessageLookupByLibrary.simpleMessage("Dotwork"),
        "tattooStyleFineline": MessageLookupByLibrary.simpleMessage("Fineline"),
        "tattooStyleGeometric":
            MessageLookupByLibrary.simpleMessage("Geométrico"),
        "tattooStyleIgnorantStyle":
            MessageLookupByLibrary.simpleMessage("Ignorant Style"),
        "tattooStyleJapanese": MessageLookupByLibrary.simpleMessage("Japonés"),
        "tattooStyleMandala": MessageLookupByLibrary.simpleMessage("Mandala"),
        "tattooStyleMinimalist":
            MessageLookupByLibrary.simpleMessage("Minimalista"),
        "tattooStyleNeoJapanese":
            MessageLookupByLibrary.simpleMessage("Neo Japonés"),
        "tattooStyleNeotraditional":
            MessageLookupByLibrary.simpleMessage("Neotradicional"),
        "tattooStyleNewSchool":
            MessageLookupByLibrary.simpleMessage("New School"),
        "tattooStyleOrnamental":
            MessageLookupByLibrary.simpleMessage("Ornamental"),
        "tattooStyleRealism": MessageLookupByLibrary.simpleMessage("Realismo"),
        "tattooStyleSurrealism":
            MessageLookupByLibrary.simpleMessage("Surrealismo"),
        "tattooStyleTraditionalAmerican":
            MessageLookupByLibrary.simpleMessage("Tradicional Americana"),
        "tattooStyleTribal": MessageLookupByLibrary.simpleMessage("Tribal"),
        "tattooStyleWatercolor":
            MessageLookupByLibrary.simpleMessage("Acuarela"),
        "tattooWorks":
            MessageLookupByLibrary.simpleMessage("Trabajos de Tatuaje"),
        "tattoos": MessageLookupByLibrary.simpleMessage("Tatuajes"),
        "tentativeEvent":
            MessageLookupByLibrary.simpleMessage("Evento Tentativo"),
        "termsAndConditions":
            MessageLookupByLibrary.simpleMessage("Términos y condiciones"),
        "termsAndConditionsContent": MessageLookupByLibrary.simpleMessage(
            "Al usar esta aplicación, usted acepta los términos y condiciones aquí descritos."),
        "thisFeatureWillBeAvailableSoon": MessageLookupByLibrary.simpleMessage(
            "Esta función estará disponible pronto"),
        "thursday": MessageLookupByLibrary.simpleMessage("Jueves"),
        "time": MessageLookupByLibrary.simpleMessage("Tiempo"),
        "timeSlotUnavailable": MessageLookupByLibrary.simpleMessage(
            "Este horario no está disponible"),
        "title": MessageLookupByLibrary.simpleMessage("Título"),
        "titleCannotBeEmpty": MessageLookupByLibrary.simpleMessage(
            "El título no puede estar vacío"),
        "to": MessageLookupByLibrary.simpleMessage("Hasta"),
        "today": MessageLookupByLibrary.simpleMessage("Hoy"),
        "toggleFeatured":
            MessageLookupByLibrary.simpleMessage("Cambiar Destacado"),
        "toggleVisibility":
            MessageLookupByLibrary.simpleMessage("Cambiar Visibilidad"),
        "tooExpensive":
            MessageLookupByLibrary.simpleMessage("Demasiado costoso"),
        "totalReviews": m30,
        "tryAgain": MessageLookupByLibrary.simpleMessage("Intentar de nuevo"),
        "tryAgainLater":
            MessageLookupByLibrary.simpleMessage("Por favor intenta más tarde"),
        "tryDifferentSearchOrFilters": MessageLookupByLibrary.simpleMessage(
            "Intenta con diferentes términos de búsqueda o filtros"),
        "tryRefreshingThePage": m31,
        "tryRemovingFilters":
            MessageLookupByLibrary.simpleMessage("Intenta quitar los filtros"),
        "trySettingUpYourWorkingHoursInAgendaSettingsOrTryAShorterAppointmentDuration":
            MessageLookupByLibrary.simpleMessage(
                "Intenta configurar tus horas de trabajo en la configuración de agenda o prueba una duración de cita más corta"),
        "tuesday": MessageLookupByLibrary.simpleMessage("Martes"),
        "typeAMessage":
            MessageLookupByLibrary.simpleMessage("Escribe un mensaje"),
        "unavailableTime":
            MessageLookupByLibrary.simpleMessage("Tiempo No Disponible"),
        "unavailableTimes":
            MessageLookupByLibrary.simpleMessage("Tiempos No Disponibles"),
        "unfeature": MessageLookupByLibrary.simpleMessage("Quitar destacado"),
        "unknown": MessageLookupByLibrary.simpleMessage("Desconocido"),
        "upcomming": MessageLookupByLibrary.simpleMessage("Se acerca"),
        "update": MessageLookupByLibrary.simpleMessage("Actualizar"),
        "updateStudioPhoto":
            MessageLookupByLibrary.simpleMessage("Actualizar foto del estudio"),
        "username": MessageLookupByLibrary.simpleMessage("Nombre de usuario"),
        "viewAllStencils":
            MessageLookupByLibrary.simpleMessage("Ver Todos los Stencils"),
        "viewConsents":
            MessageLookupByLibrary.simpleMessage("Ver Consentimientos"),
        "viewDetails": MessageLookupByLibrary.simpleMessage("Ver Detalles"),
        "viewOffers": MessageLookupByLibrary.simpleMessage("Ver Ofertas"),
        "viewStencils": MessageLookupByLibrary.simpleMessage("Ver Plantillas"),
        "viewTattooDetails":
            MessageLookupByLibrary.simpleMessage("Ver Detalles"),
        "viewTattoos": MessageLookupByLibrary.simpleMessage("Ver Tatuajes"),
        "views": MessageLookupByLibrary.simpleMessage("Vistas"),
        "visibilitySettings": MessageLookupByLibrary.simpleMessage(
            "Configuración de Visibilidad"),
        "visible": MessageLookupByLibrary.simpleMessage("Visible"),
        "waitingForPhotos":
            MessageLookupByLibrary.simpleMessage("Esperando fotos"),
        "waitingForReview":
            MessageLookupByLibrary.simpleMessage("Esperando reseña"),
        "weTriedToFindSlotsAcrossMultipleDaysButCouldNotFindAnyAvailableTimes":
            MessageLookupByLibrary.simpleMessage(
                "Intentamos encontrar horarios a lo largo de varios días pero no pudimos encontrar ningún tiempo disponible"),
        "wednesday": MessageLookupByLibrary.simpleMessage("Miércoles"),
        "week": MessageLookupByLibrary.simpleMessage("Semana"),
        "withDescription":
            MessageLookupByLibrary.simpleMessage("con descripción"),
        "workCreatedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Trabajo creado exitosamente"),
        "workDeletedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Trabajo eliminado exitosamente"),
        "workDetails":
            MessageLookupByLibrary.simpleMessage("Detalles del Trabajo"),
        "workEvidence":
            MessageLookupByLibrary.simpleMessage("Evidencia del Trabajo"),
        "workUpdatedSuccessfully": MessageLookupByLibrary.simpleMessage(
            "Trabajo actualizado exitosamente"),
        "workWillBeHiddenFromPublicView": MessageLookupByLibrary.simpleMessage(
            "El trabajo será ocultado de la vista pública"),
        "workWillBeHighlightedInProfile": MessageLookupByLibrary.simpleMessage(
            "El trabajo será destacado en el perfil"),
        "workingDays": MessageLookupByLibrary.simpleMessage("Días laborables"),
        "workingHours":
            MessageLookupByLibrary.simpleMessage("Horario de trabajo"),
        "works": MessageLookupByLibrary.simpleMessage("Trabajos"),
        "yearsAgo": m32,
        "yes": MessageLookupByLibrary.simpleMessage("Sí"),
        "yourOffer": MessageLookupByLibrary.simpleMessage("Tu oferta"),
        "yourResponse": MessageLookupByLibrary.simpleMessage("Tu Respuesta"),
        "zoomIn": MessageLookupByLibrary.simpleMessage("Acercar"),
        "zoomOut": MessageLookupByLibrary.simpleMessage("Alejar")
      };
}
