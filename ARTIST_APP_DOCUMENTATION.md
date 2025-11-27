# Artist App Documentation - Inker Studio

## Overview
The Artist app is the professional side of Inker Studio, allowing tattoo artists to manage their business, appointments, quotations, portfolio, and client consents.

## Main Navigation Structure

The Artist app has 5 main tabs accessible through the bottom navigation bar:

### 1. **Agenda Tab** (`/artist/agenda/agenda_page.dart` - Index 0)
- **Purpose**: Manage appointments and schedule
- **Views**:
  - Month View: Calendar with event markers
  - Week View: Weekly calendar with hourly events
  - Day View: Hourly schedule for a single day
- **Features**:
  - Create new events (FAB button)
  - View appointment details
  - Color-coded events (appointments vs blocked time)
  - Settings for working hours and availability
  - Manual refresh button
- **Navigation**: Tapping events navigates to `/agendaEventDetail`
- **Refresh**: Manual refresh button in app bar

### 2. **Quotations Tab** (`/quotation/quotation_list_page.dart` - Index 1)
- **Purpose**: Manage quotation requests from customers
- **Sub-tabs**:
  - **Open/Public Quotations**: Browse open requests from any customer
  - **Direct Quotations**: Personal requests from specific customers
- **Status Filters**:
  - Artist filters:
    - Pending (`pending`)
    - My Offers (`quoted`)
    - Accepted (`accepted`)
    - Expired (`expired`, `rejected`, `canceled`)
- **Features**:
  - View quotation details
  - Submit quotation offers
  - Track quotation status
  - See customer requirements and images
- **Refresh**: Pull-to-refresh implemented

### 3. **Works Tab** (`/artist/works/artist_works_page.dart` - Index 2)
- **Purpose**: Manage portfolio and showcase work
- **Features**:
  - Upload new work images
  - Edit work descriptions
  - Categorize by style
  - Set visibility (public/private)
  - View statistics and engagement
- **Organization**: Grid view of portfolio pieces
- **Actions**: Add, edit, delete works

### 4. **Consents Tab** (`/artist/consents/artist_consents_page.dart` - Index 3)
- **Purpose**: Manage legal documents and client consents
- **Features**:
  - Create consent templates
  - Send consents to clients
  - Track signature status
  - Store signed documents
  - Manage consent history
- **Status**: Pending, Signed, Expired
- **Integration**: Links with appointments

### 5. **Profile Tab** (`/artist/profile/artist_profile_page.dart` - Index 4)
- **Purpose**: Artist account and business settings
- **Sections**:
  - Business information
  - Studio details
  - Payment settings
  - Availability settings
  - Notification preferences
  - Account settings

## Key User Flows

### 1. Responding to a Quotation
```
Quotations Tab → Open Quotations → View Details → Create Offer → Submit
  OR
Quotations Tab → Direct Quotations → View Details → Create Response → Submit
```

### 2. Creating an Appointment
```
Agenda → FAB → Create Event → Fill Details → Save
  OR
Accepted Quotation → Convert to Appointment → Schedule
```

### 3. Managing Portfolio
```
Works Tab → Add Work → Upload Images → Add Details → Publish
```

### 4. Consent Process
```
Consents → Create Template → Send to Client → Track Status → Store Signed
```

## Notification Integration Points

- **Badge**: Shows unread count on tabs
- **Navigation**: Clicking notifications navigates to:
  - `/quotationDetail` for new quotation requests
  - `/agendaEventDetail` for appointment updates
  - Relevant consent or work sections

## State Management

- BlocProviders at tab level:
  - `ArtistAgendaBloc`
  - `QuotationListBloc` (shared with customer)
  - `ArtistWorksBloc`
  - `ConsentsBloc`
  - `ArtistProfileBloc`

## Refresh Mechanisms

| Tab | Pull-to-Refresh | Auto Refresh | Manual Refresh |
|-----|----------------|--------------|----------------|
| Agenda | ❌ | ❌ | ✓ (refresh button) |
| Quotations | ✓ | ❌ | ❌ |
| Works | ✓ | On CRUD operations | ❌ |
| Consents | ✓ | ❌ | ❌ |
| Profile | ❌ | ❌ | ❌ |

## Common Actions

### From Quotation List
- View customer requirements
- Submit quotation offer
- View customer profile
- Track offer status
- Convert to appointment (if accepted)

### From Agenda
- Create new event/blocked time
- View appointment details
- Edit/cancel appointments
- Navigate to customer profile
- Access consent forms
- View appointment chat

### From Works
- Add new portfolio piece
- Edit work details
- Delete works
- View engagement stats
- Share work externally

## Special Features

### 1. **Schedule Assistant** (`/schedule_assistant/schedule_assistant_page.dart`)
- Smart scheduling with availability checking
- Visual calendar with available slots
- Time slot suggestions
- Quotation context integration
- Duration-based scheduling

### 2. **Agenda Settings**
- Working hours configuration
- Break time settings
- Holiday/vacation blocking
- Default appointment duration
- Buffer time between appointments

### 3. **Quotation Response Flow**
- View customer requirements
- See reference images
- Calculate pricing
- Set availability
- Send professional response
- Track acceptance rate

## Navigation Keys
- Agenda navigation
- Quotation detail navigation
- Event detail navigation
- Profile sections

## Business Logic

### Availability Management
- Working days/hours from settings
- Automatic slot calculation
- Conflict detection
- Buffer time enforcement

### Quotation Lifecycle
1. New request received (notification)
2. Artist reviews requirements
3. Submits offer with price/timeline
4. Customer accepts/rejects
5. Converts to appointment if accepted
6. Automatic status updates

### Appointment States
- Pending confirmation
- Confirmed
- In progress
- Completed
- Cancelled
- No-show

## Key Differences from Customer App

1. **Business Focus**: Tools for managing a tattoo business vs browsing
2. **Quotation Direction**: Responding to requests vs creating them
3. **Schedule Control**: Full calendar management vs viewing appointments
4. **Portfolio Management**: Creating content vs browsing
5. **Consent Handling**: Creating/sending vs signing
6. **Analytics**: Business metrics vs personal history