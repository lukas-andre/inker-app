# Customer App Documentation - Inker Studio

## Overview
The Customer app is the client-facing side of Inker Studio, allowing users to explore tattoo artists, request quotations, manage appointments, and discover tattoo inspiration.

## Main Navigation Structure

The Customer app has 5 main tabs accessible through the bottom navigation bar:

### 1. **Explore Tab** (`/customer/app/customer_app_page.dart` - Index 0)
- **Purpose**: Discover and explore tattoo artists
- **Views**:
  - Map View: Shows artists on an interactive map
  - List/Grid View: Browse artists in a grid layout
- **Features**:
  - Search bar for finding specific artists
  - Location-based artist discovery
  - Filter and sorting options
  - Artist profile preview cards
- **Navigation**: Tapping on an artist navigates to their profile
- **Refresh**: No automatic refresh - manual pull-to-refresh available

### 2. **Quotations Tab** (`/quotation/quotation_list_page.dart` - Index 1)
- **Purpose**: Manage quotation requests
- **Sub-tabs**:
  - **Public/Open Quotations**: Browse and create open quotations visible to multiple artists
  - **Direct Quotations**: One-on-one quotation requests with specific artists
- **Status Filters**:
  - Customer filters:
    - Awaiting Artist (`pending`, `appealed`)
    - Received Quotations (`quoted`)
    - Scheduled (`accepted`)
    - Cancelled (`rejected`, `canceled`)
- **Features**:
  - Create open quotations (floating action button)
  - View quotation details
  - Accept/reject/appeal quotations
  - Real-time status updates
- **Refresh**: Pull-to-refresh implemented

### 3. **Inspiration Tab** (`/customer/inspiration_search/inspiration_search_page.dart` - Index 2)
- **Purpose**: Discover tattoo designs and stencils
- **Features**:
  - Browse tattoo designs
  - Search and filter designs
  - Save favorites
  - AI-powered tattoo generator integration
  - Request quotations directly from designs
- **Special UI**: Center tab has a circular highlight design
- **Refresh**: Pull-to-refresh available

### 4. **My Appointments Tab** (`/customer/appointments/customer_appointments_page.dart` - Index 3)
- **Purpose**: Manage confirmed tattoo appointments
- **Groups**:
  - Hero Appointment (next upcoming)
  - Requiring Action
  - Today
  - This Week
  - Upcoming
  - History
- **Features**:
  - View appointment details
  - Confirm/reject appointments
  - Leave reviews after completion
  - Contact artist via chat
  - View consent forms
- **Refresh**: Pull-to-refresh + manual refresh button

### 5. **My Profile Tab** (`/customer/app/my_profile/customer_my_profile_page.dart` - Index 4)
- **Purpose**: User account management
- **Features**:
  - Profile information
  - Preferences and settings
  - Notification settings
  - Payment methods
  - Logout
- **No AppBar**: This tab doesn't show the main app bar

## Key User Flows

### 1. Creating a Quotation
```
Explore → Artist Profile → Create Direct Quotation
  OR
Quotations Tab → Open Quotations → FAB → Create Open Quotation
  OR
Inspiration → Design → Request Quotation
```

### 2. Quotation to Appointment Flow
```
Quotation Received → View Details → Accept → Appointment Created → My Appointments
```

### 3. Appointment Management
```
My Appointments → Appointment Card → Details → Actions (Confirm/Reject/Chat)
```

## Notification Integration Points

- **Badge**: Shows unread count on all tabs except Profile
- **Navigation**: Clicking notifications navigates to:
  - `/quotationDetail` for quotation-related notifications
  - `/appointmentDetail` for appointment notifications

## State Management

- Each tab maintains its own state with `AutomaticKeepAliveClientMixin`
- BlocProviders are created at the tab level for:
  - `InspirationSearchBloc`
  - `AppointmentBloc`
  - `QuotationListBloc` (provided at app level)

## Refresh Mechanisms

| Tab | Pull-to-Refresh | Auto Refresh | Manual Refresh |
|-----|----------------|--------------|----------------|
| Explore | ✓ | ❌ | View toggle buttons |
| Quotations | ✓ | ❌ | ❌ |
| Inspiration | ✓ | ❌ | ❌ |
| Appointments | ✓ | On action success | Refresh button |
| Profile | ❌ | ❌ | ❌ |

## Common Actions

### From Quotation List
- View details
- Accept quotation
- Reject quotation  
- Appeal quotation
- Cancel quotation

### From Appointment Details
- Confirm appointment
- Reject appointment
- Request reschedule (via chat)
- Leave review
- Cancel appointment
- View/sign consent forms

## Navigation Keys
- `K.exploreTab`
- `K.quotationsTab` 
- `K.appointmentsTab`
- `K.profileTab`

## Special Behaviors

1. **Inspiration Tab**: Has special styling with circular container and shadow
2. **Notification Count**: Updates in real-time across all tabs
3. **Search Bar**: Only visible on Explore tab, adapts to screen width
4. **Empty States**: Each list view has custom empty state messaging