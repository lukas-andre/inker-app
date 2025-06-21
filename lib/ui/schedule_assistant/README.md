# Schedule Assistant Improvement Plan

## Overview
The Schedule Assistant is a critical component for artists to manage their availability and schedule appointments with customers. Currently, it provides basic calendar and time selection functionality but lacks integration with quotations and has UX issues that make it difficult to use effectively.

## Current State Analysis

### Existing Components
- **ScheduleAssistantPage**: Main page wrapper
- **ScheduleAssistantWidget**: Calendar and time grid UI
- **ScheduleAssistantBloc**: State management for events
- **AgendaService**: API integration for events and availability

### Current Issues
1. **Poor Time Selection UX**
   - Manual scrolling through 96 time slots (15-min intervals)
   - No visual indicators for availability
   - Cumbersome time wheel picker
   - No smart suggestions

2. **Limited Context Awareness**
   - Doesn't integrate with quotation data
   - No awareness of appointment duration requirements
   - Missing connection to accepted quotations

3. **API Underutilization**
   - Available time slots API not used effectively
   - Quotation-specific availability API completely unused
   - No real-time updates when switching dates

## Minimum Viable Experience (MVE) Requirements

### 1. **Visual Event Display**
- Show existing appointments clearly on the calendar
- Display accepted quotations as upcoming appointments
- Color-code different event types (confirmed, tentative, quotation-based)
- Show event details on hover/tap

### 2. **Intuitive Time Selection**
- Highlight available time slots visually
- Quick selection from suggested times
- Duration-aware selection (block appropriate time based on appointment length)
- Prevent double-booking

### 3. **Quotation Integration**
- Fetch and display quotations with accepted/quoted status
- Show quotation details (customer, description, duration)
- Auto-populate appointment duration from quotation
- Link created events to quotations

### 4. **Smart Defaults**
- Pre-select likely appointment times based on artist's history
- Show most relevant time slots first
- Default to business hours
- Consider quotation's requested date/time if available

## Technical Implementation Plan

### Phase 1: Data Integration Foundation (Week 1)

#### Task 1.1: Enhanced Data Fetching
- [ ] Create `ScheduleAssistantService` to aggregate data from multiple sources
- [ ] Implement method to fetch artist's quotations (filtered by status)
- [ ] Combine event and quotation data for unified calendar view
- [ ] Add caching layer for better performance

```dart
class ScheduleAssistantService {
  Future<ScheduleData> getScheduleData({
    required String artistId,
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    // Fetch events, quotations, and available slots in parallel
    final results = await Future.wait([
      agendaService.getArtistEvents(artistId, startDate, endDate),
      quotationService.getArtistQuotations(artistId),
      agendaService.getArtistAvailableTimeSlots(artistId, date, duration),
    ]);
    
    return ScheduleData(
      events: results[0],
      quotations: results[1].where((q) => q.hasAppointment),
      availableSlots: results[2],
    );
  }
}
```

#### Task 1.2: Update State Management
- [ ] Extend `ScheduleAssistantBloc` to handle quotation data
- [ ] Add events for quotation selection and filtering
- [ ] Implement proper loading states for multiple data sources
- [ ] Add error handling for API failures

### Phase 2: UI/UX Improvements (Week 2)

#### Task 2.1: Enhanced Calendar View
- [ ] Create `EnhancedScheduleCalendar` widget
- [ ] Add event indicators on calendar days
- [ ] Implement event type badges (quotation, regular, etc.)
- [ ] Add loading shimmer effects

#### Task 2.2: Smart Time Selection
- [ ] Replace grid view with `AvailabilityTimelineView`
- [ ] Implement visual availability indicators
- [ ] Add "Suggested Times" section at the top
- [ ] Create quick selection chips for common durations

```dart
class AvailabilityTimelineView extends StatelessWidget {
  // Shows a visual timeline with:
  // - Blocked times (existing appointments)
  // - Available slots (green)
  // - Suggested times (highlighted)
  // - Quick tap to select
}
```

#### Task 2.3: Quotation Context Panel
- [ ] Create `QuotationDetailsPanel` widget
- [ ] Show when in quotation context
- [ ] Display customer info, requirements, preferred times
- [ ] Auto-set duration based on quotation

### Phase 3: Integration & Polish (Week 3)

#### Task 3.1: Event Creation Flow
- [ ] Update event creation to include quotationId
- [ ] Implement automatic event creation on quotation acceptance
- [ ] Add confirmation dialogs with event details
- [ ] Handle edge cases (conflicts, past dates, etc.)

#### Task 3.2: Real-time Updates
- [ ] Implement date change listeners
- [ ] Add pull-to-refresh functionality
- [ ] Update availability when time selection changes
- [ ] Add optimistic UI updates

#### Task 3.3: Testing & Documentation
- [ ] Write unit tests for new services
- [ ] Add widget tests for new UI components
- [ ] Create integration tests for full flow
- [ ] Update documentation with new features

## API Endpoints to Use

### Existing Endpoints
- `GET /agenda/events/artist/{artistId}` - Fetch artist events
- `GET /agenda/available-slots/artist/{artistId}` - Get available time slots
- `GET /quotations` - Fetch quotations (needs filtering)
- `GET /quotations/{id}/available-slots` - Get quotation-specific slots

### Proposed New Endpoints (Backend Work)
- `GET /quotations/artist/{artistId}` - Get artist-specific quotations
- `GET /agenda/schedule/{artistId}` - Combined events + quotations view

## UI Component Hierarchy

```
ScheduleAssistantPage
├── BlocProvider<EnhancedScheduleAssistantBloc>
└── ScheduleAssistantView
    ├── QuotationContextBar (if in quotation context)
    ├── EnhancedCalendarView
    │   ├── CalendarDayPicker
    │   └── EventIndicators
    ├── TimeSelectionView
    │   ├── SuggestedTimesSection
    │   ├── AvailabilityTimeline
    │   └── DurationSelector
    └── ConfirmationButton
```

## Success Metrics
1. **Time to Select**: Reduce from average 8 taps to 3 taps
2. **Error Rate**: Reduce double-booking incidents by 90%
3. **User Satisfaction**: Improve artist feedback on scheduling
4. **API Efficiency**: Reduce number of API calls by 40%

## Future Enhancements
- Multi-day appointment scheduling
- Recurring appointment support
- Calendar sync (Google, Apple)
- Customer notification system
- Availability templates
- AI-powered schedule optimization

## Dependencies
- No new package dependencies required
- Utilizes existing BLoC, UI components, and services
- Compatible with current Clean Architecture pattern

## Migration Strategy
1. New implementation alongside existing one
2. Feature flag to enable new experience
3. Gradual rollout to artists
4. Deprecate old implementation after validation