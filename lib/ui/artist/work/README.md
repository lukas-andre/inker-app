# Work Tabs Module Documentation

## Overview

The Work Tabs module is a core feature of the Inker Studio app that allows tattoo artists to discover and participate in tattoo job opportunities. It consists of two main tabs:

1. **Open Quotations Tab** - Shows public tattoo requests from customers
2. **Direct Quotations Tab** (Participating Quotations) - Shows quotations the artist is actively participating in

## Module Structure

```
lib/ui/artist/work/
├── work_tab_page.dart              # Main tab container
├── open_quotations_tab_view.dart   # Open quotations list view
├── participating_quotations_tab_view.dart # Direct/participating quotations view
└── README.md                       # This documentation
```

## Components Architecture

### 1. WorkTabPage (`work_tab_page.dart`)

The main container that manages the tab navigation between Open and Direct quotations.

**Key Features:**
- Uses `TabController` for tab management
- Material Design tab bar with custom styling
- Lazy loads the participating quotations BLoC only when needed

**Dependencies:**
- `ParticipatingQuotationsBloc` - Injected via BlocProvider for the second tab
- `OpenQuotationListBloc` - Already provided at a higher level

### 2. Open Quotations Tab (`open_quotations_tab_view.dart`)

Displays a list of open quotation requests from customers looking for tattoo artists.

**Key Features:**
- Pull-to-refresh functionality
- Infinite scroll pagination
- Empty state handling
- Role-based UI (different views for artists vs customers)
- Enhanced UI with gradient header showing quotation count
- Floating action button for customers to create new quotations

**UI Enhancements:**
- Gradient header with quotation count and helpful messaging
- Cards use secondary color (purple) instead of error color (red) for better visual appeal
- Improved call-to-action button design with icons
- Better visual hierarchy with proper spacing

**State Management:**
- Uses `OpenQuotationListBloc` for data management
- Handles loading, error, and loaded states
- Implements pagination with scroll listener

### 3. Participating Quotations Tab (`participating_quotations_tab_view.dart`)

Shows quotations where the artist has already submitted an offer.

**Key Features:**
- Displays artist's active quotation participations
- Shows offer details (price, duration)
- Status-based card styling
- Message count indicators
- Quick action buttons based on quotation status
- Pull-to-refresh and pagination support

**Card Information:**
- Customer details with avatar
- Quotation description
- Offer amount and estimated duration
- Reference images count
- Status badge with appropriate coloring
- Action buttons (View details, Continue, etc.)

## BLoCs Used

### OpenQuotationListBloc

Manages the state of open quotations list.

**Events:**
- `loadOpenQuotations(isNextPage: bool)` - Load initial or next page
- `refreshOpenQuotations()` - Refresh the entire list

**States:**
- `initial` - Initial state before any data load
- `loading` - Loading first page
- `loaded` - Data loaded with pagination info
- `error` - Error state with message

### ParticipatingQuotationsBloc

Manages the artist's participating quotations.

**Events:**
- `loadInitial()` - Load first page
- `loadMore()` - Load next page
- `refresh()` - Refresh entire list

**States:**
- Contains list of `ParticipatingQuotationItemDto`
- Tracks loading states and pagination
- Error handling with messages

## Data Models

### QuotationType Enum
```dart
enum QuotationType {
  OPEN,         // Public quotation request
  DIRECT,       // Direct quotation to specific artist
  PARTICIPATING // Artist has submitted an offer
}
```

### Key DTOs
- `Quotation` - Main quotation model
- `QuotationCardViewModel` - View model for quotation cards
- `ParticipatingQuotationItemDto` - Participating quotation data
- `CustomerOpenQuotationCardViewModel` - Customer view of open quotations

## Navigation Flows

### Artist Flow
1. View open quotations list
2. Tap on quotation to see details
3. Send offer via "Send Offer" button
4. Track participation in "Direct Quotations" tab
5. Continue conversation with customer

### Customer Flow
1. Create open quotation via FAB
2. View received offers
3. Accept/reject offers
4. Continue with selected artist

## Styling Guidelines

### Colors
- **Primary**: `Color(0xFF141D3C)` - Dark blue background
- **Secondary**: `Color(0xff7450ff)` - Purple accent
- **Success**: `Color(0xFF4CAF50)` - Green for accepted/offered
- **Card Background**: `Color(0xFF1F223C)` - Slightly lighter than primary

### Typography
- Uses `TextStyleTheme` for consistent text styling
- Poppins font family throughout
- Proper text hierarchy with headline/body/caption styles

### Card Design
- Rounded corners (8-12px radius)
- Colored borders based on status
- Gradient overlays for call-to-action sections
- Proper spacing and padding for readability

## Best Practices

1. **State Management**: Always check bloc state before navigation
2. **Loading States**: Show appropriate loading indicators
3. **Error Handling**: Display user-friendly error messages
4. **Pagination**: Implement scroll listeners for infinite scroll
5. **Refresh**: Always provide pull-to-refresh functionality
6. **Empty States**: Show helpful messages when no data
7. **Accessibility**: Use proper semantic widgets and labels

## Future Improvements

1. Add filtering options for open quotations
2. Implement real-time updates via websockets
3. Add analytics tracking for offer conversion rates
4. Enhance empty states with illustrations
5. Add quick filters for quotation status
6. Implement saved/favorite quotations feature

## Related Files

- `/lib/ui/quotation/` - Quotation detail pages
- `/lib/domain/blocs/quoation/` - Business logic layer
- `/lib/data/api/quotation/` - API integration layer
- `/lib/ui/theme/` - Theme and styling configuration