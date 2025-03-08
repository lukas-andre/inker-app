# Inker Agenda System

## Overview

The Inker Agenda System provides a comprehensive scheduling solution for artists to manage their availability, appointments, and working preferences. This document outlines the key capabilities and features available in the agenda system.

## Core Features

### 1. Working Hours Management

Artists can define their standard working schedule by configuring:

- **Working Hours**: Set start and end times for the working day (e.g., 9:00 AM to 6:00 PM)
- **Working Days**: Specify which days of the week are available for appointments
  - Days are identified by numbers (1-7, where 1 is Monday)
  - Default working days: Monday to Friday (1-5)

```dart
// Example: Setting working hours
agendaService.updateWorkingHours(
  token: userToken,
  agendaId: artistAgendaId,
  workingHoursStart: '09:00',
  workingHoursEnd: '18:00',
  workingDays: ['1', '2', '3', '4', '5'], // Mon-Fri
);
```

### 2. Unavailable Time Periods

Artists can block specific time periods when they're unavailable for appointments:

- Add custom unavailable time slots (vacations, personal days, etc.)
- Specify the time range with start and end dates
- Add an optional reason description
- View all current unavailable periods
- Delete unavailable periods that are no longer needed

```dart
// Example: Adding unavailable time
agendaService.addUnavailableTime(
  token: userToken,
  agendaId: artistAgendaId,
  startDate: DateTime(2025, 3, 15),
  endDate: DateTime(2025, 3, 16),
  reason: "Personal leave",
);
```

### 3. Agenda Settings

Control the visibility and accessibility of the artist's agenda:

- **Public Setting**: Determines if the agenda is visible to other users
  - When set to true, general information about the artist's availability is visible
  - When set to false, the agenda is hidden from public view
  
- **Open Setting**: Controls whether new appointments can be booked
  - When set to true, customers can request new appointments
  - When set to false, no new appointments can be scheduled

```dart
// Example: Updating agenda settings
agendaService.updateAgendaSettings(
  token: userToken,
  agendaId: artistAgendaId,
  isPublic: true,
  isOpen: true,
);
```

### 4. Event Management

Artists can manage their appointments and events:

- **View Events**: Access all scheduled events in different view types (daily, weekly, monthly)
- **Get Event Details**: View comprehensive information about a specific event
- **Reschedule Events**: Change the date and time of an existing event
- **Update Event Notes**: Add or modify notes for a specific event

```dart
// Example: Getting all events
List<EventItem> events = await agendaService.getEvents(
  token: userToken,
  agendaViewType: 'WEEKLY',
  date: '2025-03-10',
);
```

### 5. Artist Availability

Check an artist's available time slots:

- Get all available slots based on working hours, unavailable times, and existing appointments
- Filter availability by date range
- Specify a required duration to find slots that can accommodate specific appointment types

```dart
// Example: Checking artist availability
List<dynamic> availableSlots = await agendaService.getArtistAvailability(
  token: userToken,
  artistId: artistId,
  fromDate: DateTime(2025, 3, 10),
  toDate: DateTime(2025, 3, 17),
  duration: 60, // minutes
);
```

### 6. Work Evidence

Track and showcase completed work:

- Access the artist's portfolio of completed works
- View work evidence with pagination support

```dart
// Example: Getting artist works
GetArtistWorksResponse works = await agendaService.getArtistWorks(
  token: userToken,
  artistId: artistId,
  page: 1,
  limit: 10,
);
```

## Default Values

When an agenda is initially created, it uses these default settings:

```json
{
  "workingHoursStart": "09:00",
  "workingHoursEnd": "18:00",
  "workingDays": ["1", "2", "3", "4", "5"],
  "public": true,
  "open": true
}
```

## Error Handling

The agenda system is designed to be resilient:

- Most methods return empty lists or default values when errors occur
- Non-critical operations (like settings updates) catch and log errors without disrupting the user experience
- Invalid JSON responses are handled gracefully

## API Endpoints

The agenda system communicates with the following backend endpoints:

- `GET /agenda` - Get events by date and view type
- `GET /agenda/{agendaId}/settings` - Get agenda settings
- `PUT /agenda/{agendaId}/settings` - Update agenda settings
- `GET /agenda/{agendaId}/unavailable-time` - Get unavailable time periods
- `POST /agenda/{agendaId}/unavailable-time` - Add unavailable time period
- `DELETE /agenda/{agendaId}/unavailable-time/{id}` - Delete unavailable time period
- `PUT /agenda/{agendaId}/working-hours` - Update working hours
- `GET /agenda/event/{eventId}` - Get event details
- `PUT /agenda/{agendaId}/event/{eventId}/reschedule` - Reschedule event
- `PUT /agenda/{agendaId}/event/{eventId}/notes` - Update event notes
- `GET /agenda/artists/{artistId}/availability` - Get artist available slots
- `GET /agenda/artists/{artistId}/work-evidence` - Get artist works
- `GET /quotations/{quotationId}/available-slots` - Get available slots for a quotation