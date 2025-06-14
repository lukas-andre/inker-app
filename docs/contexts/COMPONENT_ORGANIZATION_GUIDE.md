# Component Organization Guide for Inker Studio

## Component Categories

### 1. Common/Shared Components
These are used across the entire application by all user types.

```
features/common/
├── widgets/
│   ├── buttons/
│   │   ├── primary_button.dart
│   │   ├── secondary_button.dart
│   │   └── icon_button_custom.dart
│   ├── inputs/
│   │   ├── custom_text_field.dart
│   │   ├── password_field.dart
│   │   ├── phone_input.dart
│   │   └── date_picker_field.dart
│   ├── feedback/
│   │   ├── loading_widget.dart
│   │   ├── error_widget.dart
│   │   ├── empty_state_widget.dart
│   │   └── shimmer_widget.dart
│   ├── layout/
│   │   ├── custom_app_bar.dart
│   │   ├── bottom_sheet_container.dart
│   │   └── responsive_container.dart
│   └── media/
│       ├── cached_image.dart
│       ├── image_picker_widget.dart
│       └── video_player_widget.dart
├── utils/
│   ├── validators.dart
│   ├── formatters.dart
│   └── date_helpers.dart
└── services/
    ├── permission_service.dart
    ├── location_service.dart
    └── camera_service.dart
```

### 2. Artist-Specific Components
Used only in artist-related features.

```
features/artist/shared/
├── widgets/
│   ├── portfolio/
│   │   ├── work_card.dart
│   │   ├── work_grid.dart
│   │   └── portfolio_stats.dart
│   ├── agenda/
│   │   ├── calendar_widget.dart
│   │   ├── time_slot_picker.dart
│   │   └── appointment_card.dart
│   ├── profile/
│   │   ├── artist_info_card.dart
│   │   ├── rating_display.dart
│   │   └── specialties_chips.dart
│   └── stencil/
│       ├── stencil_card.dart
│       ├── stencil_gallery.dart
│       └── stencil_upload_widget.dart
├── utils/
│   ├── portfolio_helpers.dart
│   └── agenda_utils.dart
└── models/
    └── artist_shared_models.dart
```

### 3. Customer-Specific Components
Used only in customer-related features.

```
features/customer/shared/
├── widgets/
│   ├── search/
│   │   ├── search_bar.dart
│   │   ├── filter_chips.dart
│   │   ├── artist_list_tile.dart
│   │   └── map_view_widget.dart
│   ├── booking/
│   │   ├── booking_form.dart
│   │   ├── time_selection_widget.dart
│   │   └── booking_confirmation_card.dart
│   ├── favorites/
│   │   ├── favorite_button.dart
│   │   └── favorites_grid.dart
│   └── reviews/
│       ├── review_card.dart
│       ├── rating_input.dart
│       └── review_form.dart
├── utils/
│   ├── search_helpers.dart
│   └── booking_utils.dart
└── models/
    └── customer_shared_models.dart
```

### 4. Cross-Feature Components
Components used by both artists and customers but in different contexts.

```
features/shared/
├── quotation/
│   ├── quotation_card.dart
│   ├── quotation_status_badge.dart
│   └── price_display_widget.dart
├── messaging/
│   ├── chat_bubble.dart
│   ├── message_input.dart
│   └── conversation_list_tile.dart
├── notifications/
│   ├── notification_tile.dart
│   └── notification_badge.dart
└── user/
    ├── avatar_widget.dart
    ├── user_info_card.dart
    └── contact_info_widget.dart
```

## Migration Strategy for Components

### Step 1: Identify Component Usage
Create a usage matrix:

| Component | Artist | Customer | Shared |
|-----------|--------|----------|--------|
| WorkCard | ✓ | - | - |
| SearchBar | - | ✓ | - |
| Avatar | ✓ | ✓ | ✓ |
| PrimaryButton | ✓ | ✓ | ✓ |

### Step 2: Categorize Existing Components

**Current Shared Widgets to Migrate:**
- `buttons.dart` → `common/widgets/buttons/`
- `custom_app_bar.dart` → `common/widgets/layout/`
- `loading_widget.dart` → `common/widgets/feedback/`
- `shimmer_widget.dart` → `common/widgets/feedback/`

### Step 3: Create Component Guidelines

#### Naming Conventions
- **Common**: Generic names (e.g., `PrimaryButton`, `LoadingWidget`)
- **Feature-specific**: Prefixed names (e.g., `ArtistProfileCard`, `CustomerSearchBar`)
- **Shared features**: Domain names (e.g., `QuotationCard`, `ChatBubble`)

#### Component Rules
1. **Single Responsibility**: Each component should do one thing well
2. **Props over State**: Prefer stateless widgets when possible
3. **Composition**: Build complex widgets from simpler ones
4. **Testability**: All widgets should have widget tests

#### Documentation Template
```dart
/// A reusable widget that displays [purpose].
/// 
/// Used in: [list of features/screens]
/// 
/// Example:
/// ```dart
/// CustomWidget(
///   prop1: value1,
///   prop2: value2,
/// )
/// ```
class CustomWidget extends StatelessWidget {
  // Implementation
}
```

## Component Discovery Process

### 1. Audit Current Components
```bash
# Find all widgets
find lib/ui -name "*.dart" -type f | grep -E "(widget|component)" | sort

# Find duplicate implementations
grep -r "class.*Button" lib/ui --include="*.dart"
```

### 2. Create Component Inventory
| Component | Current Location | New Location | Used By |
|-----------|-----------------|--------------|---------|
| PrimaryButton | ui/shared/widgets/buttons.dart | common/widgets/buttons/ | All |
| WorkCard | ui/artist/widgets/work_card.dart | artist/shared/widgets/portfolio/ | Artist |

### 3. Refactoring Priority
1. **High Priority**: Components used in 5+ places
2. **Medium Priority**: Components with duplicate implementations
3. **Low Priority**: Single-use components that could be generalized

## Testing Strategy for Components

### Widget Test Structure
```
test/
├── features/
│   ├── common/
│   │   └── widgets/
│   │       ├── buttons/
│   │       │   └── primary_button_test.dart
│   │       └── inputs/
│   │           └── custom_text_field_test.dart
│   ├── artist/
│   │   └── shared/
│   │       └── widgets/
│   │           └── work_card_test.dart
│   └── customer/
│       └── shared/
│           └── widgets/
│               └── search_bar_test.dart
```

### Golden Tests for UI Components
- Create golden tests for complex visual components
- Store goldens in `test/goldens/`
- Update goldens when design changes

## Gradual Migration Approach

### Phase 1: Common Components (Week 1)
- Move buttons, inputs, and feedback widgets
- Update all imports
- Ensure tests pass

### Phase 2: Feature-Specific Components (Week 2-3)
- Move artist-specific widgets
- Move customer-specific widgets
- Create shared feature widgets

### Phase 3: Optimization (Week 4)
- Identify and merge duplicate components
- Extract common logic into utils
- Create component showcase/storybook

## Component Showcase

Consider creating a showcase app or storybook:
```dart
// lib/showcase/showcase_app.dart
class ShowcaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShowcaseHome(),
      routes: {
        '/buttons': (_) => ButtonShowcase(),
        '/inputs': (_) => InputShowcase(),
        '/artist-components': (_) => ArtistComponentShowcase(),
        // etc.
      },
    );
  }
}
```

This will help:
- Document component usage
- Test components in isolation
- Onboard new developers
- Maintain design consistency