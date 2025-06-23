# Schedule Assistant Enhanced Implementation Plan

## Overview
This document outlines the complete implementation plan for enhancing the Schedule Assistant with the new unified schedule endpoint that combines events, quotations, and availability data.

## New Backend Endpoint Integration

### Endpoint Details
```
GET /agenda/schedule/{artistId}
?fromDate=2025-06-21
&toDate=2025-06-22
&includeAvailability=true
&includeSuggestions=true
&defaultDuration=60
```

### Response Structure
The endpoint returns a comprehensive schedule data structure including:
- **Events**: Confirmed and tentative appointments with work evidence and reminders
- **Quotations**: Actionable and opportunity quotations with offers
- **Availability**: Time slot density information
- **Suggested Slots**: AI-powered optimal time suggestions
- **Working Hours**: Artist's business hours configuration
- **Summary**: Quick access to key metrics and deadlines

#### Key DTO Updates (Completed ✅)
- `ScheduleEvent`: Added `workEvidence`, `reminderSent`, made customer fields required
- `ScheduleQuotation`: Added `customerAvatar`, `referenceImages`, `conflictingEventIds`, `offers`
- `SchedulerQuotationOffer`: New DTO with standardized `start`/`end` times instead of `estimatedDate`/`estimatedDuration`
- `NextAvailableSlot`: Added optional `density` field

## Implementation Phases

### Phase 1: Data Layer Foundation (Priority: Critical)

#### Task 1.1: Create Schedule DTOs ✅
- [x] Create `ScheduleResponse` DTO with Freezed
- [x] Create `ScheduleEvent` DTO for events
- [x] Create `ScheduleQuotation` DTO for quotations
- [x] Create `AvailabilitySlot` DTO
- [x] Create `SuggestedSlot` DTO
- [x] Create `ScheduleSummary` DTO
- [x] Create `SchedulerQuotationOffer` DTO with standardized start/end times
- [x] Run code generation: `make build`

#### Task 1.2: Enhance ApiAgendaService ✅
- [x] Add `getSchedule()` method to AgendaService interface
- [x] Implement `getSchedule()` in ApiAgendaService
- [x] Add proper error handling and logging
- [ ] Create unit tests for new endpoint (pending)

#### Task 1.3: Update Domain Layer ✅
- [x] Create `ScheduleService` to orchestrate data fetching (already existed)
- [x] Update `ScheduleAssistantBloc` to use new service
- [x] Add new events for quotation interactions
- [ ] Implement caching strategy for schedule data (future enhancement)

### Phase 2: State Management Enhancement (Priority: High) ✅

#### Task 2.1: Extend ScheduleAssistantBloc ✅
```dart
// New events added:
- ScheduleDataRequested(artistId, fromDate, toDate) ✅
- QuotationSelected(quotationId) ✅
- TimeSlotSuggestionSelected(slot) ✅
- AvailabilityDensityToggled(show/hide) ✅
- QuotationActionTriggered(quotationId, action) ✅
- CreateEventFromQuotation(quotationId, startTime, endTime) ✅
```

#### Task 2.2: Enhanced State Model ✅
```dart
// New state properties added:
- List<ScheduleEvent> events ✅
- List<ScheduleQuotation> quotations ✅
- Map<String, List<AvailabilitySlot>> availability ✅
- List<SuggestedSlot> suggestedSlots ✅
- WorkingHours workingHours ✅
- ScheduleSummary summary ✅
- ScheduleQuotation? selectedQuotation ✅
- DateTime? selectedTimeSlot ✅
- bool showAvailabilityDensity ✅
- bool isCreatingEvent ✅
```

#### Task 2.3: Business Logic Implementation ✅
- [x] Handle quotation selection and context
- [x] Implement time slot conflict detection (in ScheduleService)
- [x] Add duration-aware slot selection
- [x] Create smart default time selection algorithm (getNextAvailableSlot)

### Phase 3: UI Component Development (Priority: High) ✅

#### Task 3.1: Calendar Enhancement ✅
- [x] Create `EnhancedCalendarView` widget
- [x] Add event type indicators (dots/badges)
- [x] Implement day selection with immediate data fetch
- [x] Add loading states
- [x] Create event preview indicators

#### Task 3.2: Time Selection Redesign ✅
- [x] Create `SmartTimeSelector` widget
- [x] Replace grid with timeline visualization
- [x] Add density heatmap overlay option
- [x] Implement suggested slots carousel
- [x] Create quick duration selector chips

#### Task 3.3: Quotation Integration Panel ✅
- [x] Create `QuotationContextPanel` widget
- [x] Display when quotation is selected
- [x] Show customer info and requirements
- [x] Add action buttons (accept, reject, respond)
- [x] Show quotation offers and details

#### Task 3.4: Event List View ✅
- [x] Create `ScheduleEventsList` widget
- [x] Group events and quotations chronologically
- [x] Implement tap actions for selection
- [x] Implement conflict indicators
- [x] Add status and action indicators

### Phase 4: Feature Integration (Priority: Medium)

#### Task 4.1: Event Creation Flow
- [ ] Update `CreateEventDialog` to support quotations
- [ ] Add quotation linking during event creation
- [ ] Implement automatic duration from quotation
- [ ] Add conflict warnings before creation
- [ ] Create success animation/feedback

#### Task 4.2: Real-time Updates
- [ ] Implement WebSocket connection for live updates
- [ ] Add optimistic UI updates
- [ ] Create sync indicator
- [ ] Handle offline mode gracefully
- [ ] Add pull-to-refresh functionality

#### Task 4.3: Smart Features
- [ ] Implement "Best Times" algorithm
- [ ] Add appointment pattern recognition
- [ ] Create availability templates
- [ ] Add quick actions for common tasks
- [ ] Implement batch operations

### Phase 5: Polish & Performance (Priority: Medium)

#### Task 5.1: Performance Optimization
- [ ] Implement data prefetching for adjacent weeks
- [ ] Add intelligent caching with TTL
- [ ] Optimize render performance for large datasets
- [ ] Implement virtual scrolling for time slots
- [ ] Add request debouncing

#### Task 5.2: Accessibility & UX
- [ ] Add keyboard navigation support
- [ ] Implement screen reader descriptions
- [ ] Create haptic feedback for selections
- [ ] Add undo/redo functionality
- [ ] Implement gesture shortcuts

#### Task 5.3: Error Handling & Recovery
- [ ] Add comprehensive error boundaries
- [ ] Create user-friendly error messages
- [ ] Implement retry mechanisms
- [ ] Add fallback UI for degraded service
- [ ] Create diagnostic logging

## Component Architecture

```
lib/ui/schedule_assistant/
├── pages/
│   └── schedule_assistant_page.dart
├── widgets/
│   ├── enhanced_calendar_view.dart
│   ├── smart_time_selector.dart
│   ├── quotation_context_panel.dart
│   ├── schedule_events_list.dart
│   ├── availability_timeline.dart
│   ├── suggested_slots_carousel.dart
│   └── schedule_summary_card.dart
├── models/
│   ├── schedule_response.dart
│   ├── schedule_event.dart
│   ├── schedule_quotation.dart
│   └── availability_slot.dart
└── services/
    └── schedule_service.dart
```

## API Integration Points

### Required Endpoints
1. `GET /agenda/schedule/{artistId}` - Main schedule data
2. `POST /agenda/event` - Create event with quotationId
3. `PUT /agenda/{agendaId}/event/{eventId}` - Update event
4. `POST /quotations/{quotationId}/accept` - Accept quotation
5. `POST /quotations/{quotationId}/reject` - Reject quotation

### WebSocket Events (Future)
- `schedule.updated` - Real-time schedule changes
- `quotation.new` - New quotation received
- `event.modified` - Event status changed

## Testing Strategy

### Unit Tests
- [ ] ScheduleService API calls
- [ ] ScheduleAssistantBloc state transitions
- [ ] Date/time utility functions
- [ ] Conflict detection algorithms

### Widget Tests
- [ ] Calendar view interactions
- [ ] Time selector behavior
- [ ] Quotation panel actions
- [ ] Event list rendering

### Integration Tests
- [ ] Full scheduling flow
- [ ] Quotation to event conversion
- [ ] Conflict resolution
- [ ] Error recovery scenarios

## Migration Plan

1. **Feature Flag Implementation**
   ```dart
   if (FeatureFlags.enhancedScheduleAssistant) {
     return EnhancedScheduleAssistantPage();
   } else {
     return LegacyScheduleAssistantPage();
   }
   ```

2. **Gradual Rollout**
   - Week 1: Internal testing
   - Week 2: 10% of artists
   - Week 3: 50% of artists
   - Week 4: 100% deployment

3. **Rollback Strategy**
   - Keep legacy code for 30 days
   - Monitor error rates
   - Quick toggle via remote config

## Success Metrics

### Performance KPIs
- API response time < 200ms
- UI render time < 16ms (60fps)
- Time to interactive < 1s
- Cache hit rate > 80%

### User Experience KPIs
- Time to schedule: < 30 seconds
- Error rate: < 1%
- User satisfaction: > 4.5/5
- Feature adoption: > 70%

## Dependencies

### Existing Packages
- flutter_bloc: State management
- freezed: Immutable models
- json_serializable: JSON parsing
- intl: Date formatting
- collection: Data manipulation

### No New Dependencies Required

## Timeline

### Week 1
- Data layer implementation
- State management updates
- Basic UI components

### Week 2
- Complete UI implementation
- Integration testing
- Performance optimization

### Week 3
- Polish and edge cases
- Documentation
- Deployment preparation

### Week 4
- Gradual rollout
- Monitoring
- Bug fixes

## Code Examples

### Using the new Schedule Service

```dart
// In your BLoC or UI component
final scheduleService = ScheduleService(
  agendaService: context.read<AgendaService>(),
  sessionService: context.read<LocalSessionService>(),
);

// Fetch comprehensive schedule data
final schedule = await scheduleService.getArtistSchedule(
  artistId: '745a1c6c-25e8-4e81-be8b-28d8bc770ab3',
  fromDate: DateTime.now(),
  toDate: DateTime.now().add(Duration(days: 7)),
  includeAvailability: true,
  includeSuggestions: true,
  defaultDuration: 60,
);

// Access different data types
final confirmedEvents = schedule.events.where((e) => e.category == 'confirmed');
final actionableQuotations = schedule.quotations.where((q) => q.actionRequired);
final suggestedSlots = schedule.suggestedSlots;
final workingHours = schedule.workingHours;
```

### Displaying Events and Quotations

```dart
// Group events by date for calendar display
final eventsByDate = scheduleService.groupEventsByDate(schedule.events);

// Check for conflicts before creating new event
final hasConflict = scheduleService.hasConflict(
  startTime: proposedStart,
  endTime: proposedEnd,
  events: schedule.events,
);

// Get next available slot
final nextSlot = scheduleService.getNextAvailableSlot(
  schedule: schedule,
  durationMinutes: 60,
);
```

## Next Steps

1. Run code generation for DTOs: `make build`
2. Create mock data for testing
3. Update ScheduleAssistantBloc to use new service
4. Begin UI component development
5. Create comprehensive tests

## Important Notes

- ✅ The DTOs have been created with Freezed annotations
- ✅ The ApiAgendaService has been enhanced with the new getSchedule method
- ✅ ScheduleService exists and provides comprehensive scheduling operations
- ✅ Code generation completed successfully - all DTOs and BLoC files are ready
- ✅ BLoC has been updated to use the new ScheduleService
- ✅ All Phase 2 events and state properties implemented
- ✅ All Phase 3 UI components created and integrated
- ✅ Schedule Assistant page updated to use new widgets

## Completed Tasks

### Phase 1: Data Layer Foundation ✅
1. **Schedule DTOs** - All DTOs created and generated
2. **ApiAgendaService** - Enhanced with getSchedule() method
3. **ScheduleService** - Already existed with comprehensive functionality

### Phase 2: State Management Enhancement ✅
1. **Extended BLoC Events** - Added 6 new events for quotations and scheduling
2. **Enhanced State Model** - Updated with all required properties
3. **Business Logic** - Implemented all event handlers and helper methods
4. **Code Generation** - Successfully generated Freezed files

### Phase 3: UI Component Development ✅
1. **EnhancedCalendarView** - Calendar with event indicators and legend
2. **SmartTimeSelector** - Timeline view with density visualization
3. **QuotationContextPanel** - Detailed quotation view with actions
4. **ScheduleEventsList** - Daily event/quotation list view
5. **Updated ScheduleAssistantPage** - Integrated all new widgets

### Next Phase: Feature Integration (Phase 4)
Ready to implement event creation flow, real-time updates, and smart features!