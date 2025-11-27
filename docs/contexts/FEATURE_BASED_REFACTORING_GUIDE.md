# Feature-Based Architecture Refactoring Guide

## Overview
This guide outlines the plan to refactor Inker Studio from its current layer-based architecture to a feature-based architecture. This will improve code organization, maintainability, and team collaboration.

## Current Structure (Layer-Based)
```
lib/
├── ui/
│   ├── artist/
│   ├── customer/
│   └── shared/
├── domain/
│   ├── blocs/
│   ├── models/
│   └── repositories/
└── data/
    ├── api/
    └── repositories/
```

## Proposed Structure (Feature-Based)
```
lib/
├── features/
│   ├── auth/
│   │   ├── ui/
│   │   ├── bloc/
│   │   ├── models/
│   │   ├── data/
│   │   └── README.md
│   ├── artist/
│   │   ├── portfolio/
│   │   ├── agenda/
│   │   ├── profile/
│   │   └── shared/
│   ├── customer/
│   │   ├── search/
│   │   ├── booking/
│   │   ├── profile/
│   │   └── shared/
│   ├── quotation/
│   │   ├── ui/
│   │   ├── bloc/
│   │   └── models/
│   └── common/
│       ├── widgets/
│       ├── utils/
│       └── services/
├── core/
│   ├── constants/
│   ├── theme/
│   ├── navigation/
│   └── dependencies/
└── generated/
```

## Migration Plan

### Phase 1: Setup New Structure (Week 1)
1. Create the new directory structure alongside existing code
2. Set up feature module templates
3. Create migration scripts to help move files

### Phase 2: Core Features First (Weeks 2-3)
Start with the most independent features:

#### 1. Authentication Feature
```
features/auth/
├── ui/
│   ├── login/
│   │   ├── login_page.dart
│   │   ├── login_form.dart
│   │   └── widgets/
│   ├── register/
│   │   ├── register_page.dart
│   │   └── register_form.dart
│   └── onboarding/
│       ├── onboarding_page.dart
│       └── widgets/
├── bloc/
│   ├── auth_bloc.dart
│   ├── login_bloc.dart
│   └── register_bloc.dart
├── models/
│   ├── user.dart
│   └── auth_state.dart
├── data/
│   ├── auth_repository.dart
│   └── auth_api.dart
└── auth_feature.dart  # Feature module export
```

#### 2. User Profile Features
Separate artist and customer profiles:

**Artist Profile:**
```
features/artist/profile/
├── ui/
│   ├── artist_profile_page.dart
│   ├── edit_profile_page.dart
│   └── widgets/
├── bloc/
│   └── artist_profile_bloc.dart
├── models/
│   └── artist.dart
└── data/
    └── artist_repository.dart
```

**Customer Profile:**
```
features/customer/profile/
├── ui/
│   ├── customer_profile_page.dart
│   └── widgets/
├── bloc/
│   └── customer_profile_bloc.dart
├── models/
│   └── customer.dart
└── data/
    └── customer_repository.dart
```

### Phase 3: Complex Features (Weeks 4-6)

#### Portfolio Management (Artist)
```
features/artist/portfolio/
├── ui/
│   ├── portfolio_page.dart
│   ├── work_detail_page.dart
│   ├── add_work_page.dart
│   └── widgets/
├── bloc/
│   ├── portfolio_bloc.dart
│   └── work_detail_bloc.dart
├── models/
│   └── work.dart
└── data/
    └── portfolio_repository.dart
```

#### Booking System (Customer)
```
features/customer/booking/
├── ui/
│   ├── search_artists_page.dart
│   ├── artist_detail_page.dart
│   ├── booking_page.dart
│   └── widgets/
├── bloc/
│   ├── search_bloc.dart
│   └── booking_bloc.dart
├── models/
│   ├── booking.dart
│   └── search_filters.dart
└── data/
    └── booking_repository.dart
```

### Phase 4: Shared Features (Week 7)

#### Quotation System (Shared between Artist/Customer)
```
features/quotation/
├── ui/
│   ├── create_quotation_page.dart
│   ├── quotation_list_page.dart
│   ├── quotation_detail_page.dart
│   └── widgets/
├── bloc/
│   ├── quotation_list_bloc.dart
│   └── quotation_detail_bloc.dart
├── models/
│   └── quotation.dart
└── data/
    └── quotation_repository.dart
```

### Phase 5: Common/Core Modules (Week 8)

#### Common Widgets
```
features/common/widgets/
├── buttons/
│   ├── primary_button.dart
│   └── secondary_button.dart
├── inputs/
│   ├── custom_text_field.dart
│   └── form_validators.dart
├── layouts/
│   ├── custom_app_bar.dart
│   └── responsive_layout.dart
└── feedback/
    ├── loading_widget.dart
    └── error_widget.dart
```

#### Core Services
```
core/
├── services/
│   ├── http_client_service.dart
│   ├── platform_service.dart
│   └── storage_service.dart
├── theme/
│   └── app_theme.dart
├── navigation/
│   ├── app_routes.dart
│   └── route_generator.dart
└── constants/
    ├── endpoints.dart
    └── app_constants.dart
```

## Migration Strategy

### 1. File Moving Script
Create a script to automate file movement:
```bash
#!/bin/bash
# migrate_feature.sh
# Usage: ./migrate_feature.sh auth

FEATURE=$1
mkdir -p lib/features/$FEATURE/{ui,bloc,models,data}

# Move UI files
mv lib/ui/$FEATURE/* lib/features/$FEATURE/ui/

# Move BLoCs
mv lib/domain/blocs/$FEATURE/* lib/features/$FEATURE/bloc/

# Update imports
find lib/features/$FEATURE -name "*.dart" -exec sed -i '' 's|package:inker_studio/ui/|package:inker_studio/features/|g' {} \;
```

### 2. Import Update Strategy
1. Create a mapping file of old imports to new imports
2. Use automated tools to update all imports across the codebase
3. Run `flutter analyze` after each feature migration

### 3. Testing Strategy
1. Ensure all tests pass before starting migration
2. Move tests alongside their features
3. Update test imports
4. Run tests after each feature migration

## Feature Module Pattern

Each feature should have a barrel export file:

```dart
// features/auth/auth_feature.dart
export 'ui/login/login_page.dart';
export 'ui/register/register_page.dart';
export 'bloc/auth_bloc.dart';
export 'models/user.dart';
```

## Dependency Rules

1. **Features can depend on:**
   - Their own internal modules
   - Common/shared modules
   - Core modules

2. **Features CANNOT depend on:**
   - Other features directly
   - Use events/navigation for feature communication

3. **Core modules can only depend on:**
   - Flutter/Dart SDK
   - Third-party packages

## Benefits of Feature-Based Architecture

1. **Better Organization**: Related code is grouped together
2. **Team Scalability**: Teams can work on features independently
3. **Code Reusability**: Easier to identify and extract reusable components
4. **Testing**: Feature-specific tests are easier to maintain
5. **Onboarding**: New developers can understand features in isolation

## Implementation Checklist

- [ ] Create new directory structure
- [ ] Set up migration scripts
- [ ] Migrate authentication feature
- [ ] Migrate user profiles (artist/customer)
- [ ] Migrate portfolio management
- [ ] Migrate booking system
- [ ] Migrate quotation system
- [ ] Extract common widgets
- [ ] Set up core services
- [ ] Update navigation system
- [ ] Update dependency injection
- [ ] Update all imports
- [ ] Run full test suite
- [ ] Update documentation
- [ ] Remove old directory structure

## Tools and Scripts

### 1. Feature Generator Script
```bash
#!/bin/bash
# generate_feature.sh
# Usage: ./generate_feature.sh feature_name

FEATURE=$1
mkdir -p lib/features/$FEATURE/{ui,bloc,models,data}

cat > lib/features/$FEATURE/${FEATURE}_feature.dart << EOF
// Export all public APIs of this feature
export 'ui/${FEATURE}_page.dart';
export 'bloc/${FEATURE}_bloc.dart';
export 'models/${FEATURE}_model.dart';
EOF
```

### 2. Import Updater
```dart
// tools/update_imports.dart
void main() {
  final importMappings = {
    'package:inker_studio/ui/': 'package:inker_studio/features/',
    'package:inker_studio/domain/blocs/': 'package:inker_studio/features/',
    // Add more mappings
  };
  
  // Implementation to update imports
}
```

## Success Metrics

1. All tests passing
2. No circular dependencies
3. Reduced coupling between features
4. Improved build times
5. Clear feature boundaries

## Notes for AI/Developer Implementation

1. Start with one feature at a time
2. Always run tests after migration
3. Update imports incrementally
4. Keep the old structure until migration is complete
5. Document any deviations from this plan
6. Consider creating a feature flag to switch between old/new structure during migration

This refactoring will take approximately 8 weeks with a dedicated developer. The app can continue to function normally during the migration as we'll maintain both structures temporarily.