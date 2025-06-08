# Consent System Implementation

## Overview

This document describes the implementation of the consent system for the Inker Studio Flutter application. The system allows artists to create and manage consent form templates, and customers to sign these forms for their appointments.

## Architecture

The consent system follows the BLoC pattern and clean architecture principles:

### Domain Layer
- **Models**: `FormTemplate`, `SignedConsent`, `FormSchema`, `ConsentType`
- **Services**: `ConsentService` (abstract interface)
- **BLoCs**: `FormTemplateBloc`, `SignedConsentBloc`

### Data Layer
- **API Service**: `ApiConsentService` (implements `ConsentService`)
- **DTOs**: `CreateFormTemplateDto`, `SignConsentDto`

### UI Layer
- **Customer Pages**: `ConsentSigningPage`, `ConsentFormDialog`
- **Artist Pages**: `ConsentTemplatesPage`
- **Shared Widgets**: `DynamicFormRenderer`

## Key Features

### 1. Dynamic Form Rendering
The `DynamicFormRenderer` widget can render forms based on `FormSchema` definitions, supporting:
- Text inputs (text, email, phone)
- Text areas
- Date pickers
- Checkboxes
- Radio buttons
- Dropdowns
- Digital signature pads

### 2. Form Logic Support
The system supports conditional field visibility based on:
- `IS_CHECKED`: Show field if checkbox is checked
- `EQUALS_VALUE`: Show field if another field equals a specific value
- `IS_FILLED`: Show field if another field has content
- `GREATER_THAN`: Show field if numeric field is greater than value

### 3. Digital Signatures
Uses the `signature` package to capture digital signatures with:
- Canvas-based signature capture
- Base64 encoding for storage
- Clear and save functionality

### 4. Validation
Comprehensive form validation including:
- Required field validation
- Email format validation
- Custom regex patterns
- Min/max length validation

## Implementation Details

### Form Schema Structure
```dart
FormSchema(
  title: "Consent Form Title",
  description: "Form description",
  fields: [
    FormSchemaField(
      type: "text",
      name: "fullName",
      label: "Full Name",
      required: true,
      placeholder: "Enter your full name"
    ),
    FormSchemaField(
      type: "signature",
      name: "clientSignature",
      label: "Client Signature",
      required: true
    )
  ],
  logic: {
    "conditionalField": FormSchemaLogic(
      showIf: [
        FormSchemaLogicCondition(
          field: "isOver18",
          condition: "IS_CHECKED"
        )
      ]
    )
  }
)
```

### API Integration
The system integrates with the backend consent API:
- `POST /consent/templates` - Create form template
- `GET /consent/templates/artist/:artistId` - Get artist templates
- `POST /consent/signatures` - Sign consent
- `GET /consent/templates/event/:eventId/required` - Get required consents

### State Management
Uses BLoC pattern for state management:
- `FormTemplateBloc` manages template CRUD operations
- `SignedConsentBloc` manages consent signing and status

## Usage

### For Artists
1. Navigate to consent templates page
2. Create new templates with dynamic fields
3. Manage existing templates (edit, activate/deactivate, delete)

### For Customers
1. View appointment details
2. See consent status and progress
3. Sign required consent forms through dynamic dialog
4. Track completion status

## Integration Points

### Appointment Detail Page
The consent system is integrated into the appointment detail page, showing:
- Consent completion status
- Progress indicator
- Quick access to sign remaining forms

### Navigation
- `/consent-signing` route for customer consent signing
- Artist consent templates accessible from artist dashboard

## Dependencies

- `signature: ^5.5.0` - Digital signature capture
- `flutter_bloc: ^8.0.1` - State management
- `freezed: ^2.2.0` - Immutable data classes

## Future Enhancements

1. **Template Builder UI**: Visual form builder for artists
2. **PDF Generation**: Generate PDF copies of signed consents
3. **Advanced Logic**: More complex conditional field logic
4. **Bulk Operations**: Sign multiple consents at once
5. **Template Versioning**: Handle template updates and migrations
6. **Audit Trail**: Track all consent-related actions

## Files Created/Modified

### New Files
- `lib/ui/shared/widgets/dynamic_form_renderer.dart`
- `lib/ui/customer/consent/consent_form_dialog.dart`
- `lib/ui/artist/consent/consent_templates_page.dart`
- `CONSENT_IMPLEMENTATION.md`

### Modified Files
- `pubspec.yaml` - Added signature dependency
- `lib/ui/customer/consent/consent_signing_page.dart` - Updated to use new dialog
- `lib/ui/customer/appointments/appointment_detail_page.dart` - Integrated consent system

### Existing Files (Already Present)
- Domain models and services
- BLoC implementations
- API service implementations

## Testing

The system should be tested with:
1. Unit tests for form validation logic
2. Widget tests for dynamic form rendering
3. Integration tests for consent signing flow
4. API tests for backend integration

## Notes

- All hardcoded strings should be replaced with proper localization
- Error handling should be enhanced for production use
- Performance optimization may be needed for large forms
- Accessibility features should be added for better UX 