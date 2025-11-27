# Artist Agenda Management

This module provides enhanced calendar management features for artists, allowing them to manage their availability, appointments, and calendar settings.

## Features

### 1. Calendar Settings

Artists can configure their calendar with:
- Working hours (start/end times)
- Working days selection (Mon-Sun)
- Public/private visibility settings
- Open/closed status for bookings

### 2. Unavailable Time Management

Artists can:
- Add time blocks where they're unavailable
- Provide reasons for unavailability (vacation, personal time, etc.)
- View and delete existing unavailable time blocks

### 3. Appointment Management

Enhanced appointment features:
- Add detailed notes to appointments
- Reschedule appointments with reason tracking
- View appointment details including location and customer info

## File Structure

- `agenda_page.dart` - Main calendar view with day/week/month toggle
- `agenda_settings_page.dart` - Settings UI for working hours and unavailable times
- `events/event_page.dart` - Appointment detail page with notes and reschedule options
- `hourly_event_list.dart` - List view for appointments within a day

## API Endpoints

### Calendar Settings

```
PUT /agenda/:agendaId/working-hours
PUT /agenda/:agendaId/settings
```

### Unavailable Time Management

```
POST /agenda/:agendaId/unavailable-time
GET /agenda/:agendaId/unavailable-time
DELETE /agenda/:agendaId/unavailable-time/:id
```

### Appointment Management

```
PUT /agenda/:agendaId/event/:eventId/reschedule
PUT /agenda/:agendaId/event/:eventId/notes
```

### Availability Information

```
GET /agenda/artists/:artistId/availability
GET /quotations/:id/available-slots
```

## State Management

The feature uses the BLoC pattern with Freezed for state management:

- `ArtistAgendaBloc` - Manages main calendar view and events
- `ArtistAgendaSettingsBloc` - Manages calendar settings and unavailable times
- `ArtistAgendaEventDetailBloc` - Manages appointment details, notes, and rescheduling

## Future Improvements

- Integrating with customer notifications for rescheduled appointments
- Calendar synchronization with third-party calendar apps
- Enhanced analytics for artist working patterns and busy periods
- Automated optimization of suggested time slots based on artist preferences