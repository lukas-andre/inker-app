# Hardcoded Text for Localization

This document lists all hardcoded text strings found in the agenda and appointment-related files that should be localized.

## agenda_page.dart

- "Agenda"
- "Settings" (implied from settings icon usage)
- "Refresh" (implied from refresh icon usage)
- "Create Event" (implied from floating action button)

## agenda_settings_page.dart

- "Configuración de Agenda"
- "Horarios"
- "Tiempo no disponible"
- "Error: $message"
- "Reintentar"
- "Horario de Trabajo"
- "Hora de inicio"
- "Hora de fin"
- "Días de Trabajo"
- "Lun"
- "Mar"
- "Mie"
- "Jue"
- "Vie"
- "Sab"
- "Dom"
- "Configuración de Visibilidad"
- "Agenda Pública"
- "Los clientes pueden ver tu disponibilidad"
- "Abierto para Reservas"
- "Los clientes pueden reservar citas"
- "Guardar Horario"
- "Guardar Visibilidad"
- "Agregar Tiempo No Disponible"
- "Seleccionar fechas"
- "Razón (opcional)"
- "Agregar"
- "Tiempos No Disponibles"
- "No hay tiempos no disponibles configurados"
- "Tiempo no disponible"
- "Cancelar"

## event_page.dart

- "Notas de la Cita"
- "Añade notas sobre la cita..."
- "Guardar"
- "Notas guardadas correctamente"
- "Reprogramar Cita"
- "Fecha y hora actual:"
- "Nueva fecha:"
- "Nueva hora de inicio:"
- "Nueva hora de finalización:"
- "Motivo de reprogramación"
- "Reprogramar"
- "Cita reprogramada correctamente"
- "Añadir Notas"
- "Reprogramar"
- "Location" (already localized, referenced as S.of(context).location)
- "Date" (already localized, referenced as S.of(context).date)
- "Time" (already localized, referenced as S.of(context).time)
- "Description" (already localized, referenced as S.of(context).description)
- "Work Evidence" (already localized, referenced as S.of(context).workEvidence)
- "Quotation Number" (already localized, referenced as S.of(context).quotationNumber)
- "Edit" (already localized, referenced as S.of(context).edit)
- "Cancel" (already localized, referenced as S.of(context).cancel)
- "Completed" (already localized, referenced as S.of(context).completed)
- "Upcoming" (already localized, referenced as S.of(context).upcomming)

## customer_appoinments_page.dart

This file was not found in the provided file structure. If you need to create a list for this file, please provide the file path or content.

## appointment_detail_page.dart

This file was not found in the provided file structure. If you need to create a list for this file, please provide the file path or content.

## How to Localize

1. Add these strings to the localization files:
   - `/Users/lhenry/Development/inker/inker-app/lib/l10n/intl_en.arb` for English
   - `/Users/lhenry/Development/inker/inker-app/lib/l10n/intl_es_CL.arb` for Spanish

2. Replace hardcoded strings with localized references:
   ```dart
   // Instead of 
   Text('Horarios')
   
   // Use
   Text(S.of(context).schedules)
   ```

3. Run the code generation command to update the localization files:
   ```
   flutter pub run intl_translation:generate_from_arb --output-dir=lib/l10n --no-use-deferred-loading lib/l10n/intl_*.arb lib/l10n/messages_*.dart
   ```