# Inker Studio Integration Tests

This directory contains end-to-end integration tests for the Inker Studio application, simulating real user interactions.

## Running Tests

Ensure you have a device or emulator running. Then, run the tests using the following command from the root of the project:

```bash
flutter test integration_test
```

## Critical Test Scenarios

Based on the core functionalities of the app for both Customers and Artists, the following integration test scenarios are considered critical to ensure application stability and correctness before release:

### Common Flows

1.  **Onboarding & Registration:**
    *   [X] Select "Customer" type and complete registration successfully.
    *   [X] Select "Artist" type and complete registration successfully (including address lookup if applicable).
    *   [] Attempt registration with invalid data (e.g., duplicate email, weak password) and verify error handling.
2.  **Login & Logout:**
    *   [X] Login successfully as a registered Customer.
    *   [X] Login successfully as a registered Artist.
    *   [ ] Attempt login with incorrect credentials and verify error message.
    *   [X] Log out successfully from both Customer and Artist accounts.

### Customer Flows

3.  **Artist Exploration & Search:**
    *   [ ] Navigate to the "Explore" tab.
    *   [ ] Switch between Map view and List view.
    *   [ ] Use the search bar to find a specific artist.
    *   [ ] Apply filters (if available) and verify results.
    *   [ ] Tap on an artist to view their profile.
4.  **Quotation Request & Management:**
    *   [ ] Navigate to an Artist's profile and initiate a quotation request.
    *   [ ] Fill and submit the quotation request form.
    *   [ ] Navigate to the "Quotations" tab and view the pending request.
    *   [ ] View details of a quotation received from an artist.
    *   [ ] Accept a received quotation.
    *   [ ] Reject a received quotation.
5.  **Inspiration Search:**
    *   [ ] Navigate to the "Inspiration" tab.
    *   [ ] Search for stencils/works using keywords/tags.
    *   [ ] Apply filters (if available).
    *   [ ] View details of a specific stencil/work.
6.  **Appointments:**
    *   [ ] Navigate to the "My Appointments" tab.
    *   [ ] View upcoming appointments list.
    *   [ ] View past appointments list.
    *   *Dependency: Needs a flow to create an appointment (e.g., from an accepted quote).*
7.  **Notifications:**
    *   [ ] Receive a notification (e.g., quote received, appointment reminder - requires mocking/setup).
    *   [ ] Tap on a notification and verify navigation to the correct screen.
    *   [ ] Check the notification badge count updates correctly.
8.  **Profile:**
    *   [ ] Navigate to the "My Profile" tab.
    *   [ ] View profile information.
    *   [ ] Edit profile information (if applicable).

### Artist Flows

9.  **Agenda Management & Settings:**
    *   [ ] Navigate to the "Agenda" tab.
    *   [ ] View the calendar/agenda display.
    *   [ ] Refresh the agenda view.
    *   [ ] Navigate to Agenda Settings.
    *   [ ] Modify availability (e.g., block a time slot, set working hours).
    *   [ ] Verify changes reflect in the main agenda view.
10. **Quotation Response:**
    *   [ ] Navigate to the "Quotations" tab.
    *   [ ] View a list of received quotation requests.
    *   [ ] Open a specific request.
    *   [ ] Respond to a request with a price/details.
    *   [ ] Decline a quotation request.
11. **Content Management (Stencils & Works):**
    *   [X] **Add Stencil:** Navigate to Profile -> Add Stencil, fill form, add new tag, submit, verify success. *(Covered by `add_stencil_test.dart`)*
    *   [X] **Edit Stencil:** Navigate to an existing stencil, edit details, save, verify changes.
    *   [X] **Delete Stencil:** Delete an existing stencil, verify removal.
    *   [X] **Add Work:** Similar flow to adding a stencil, but for finished works.
    *   [X] **Edit Work:** Similar flow to editing a stencil.
    *   [X] **Delete Work:** Similar flow to deleting a stencil.
12. **Profile View:**
    *   [X] Navigate to the "My Profile" tab.
    *   [X] Verify personal information is displayed correctly.
    *   [X] Verify uploaded stencils and works are listed.
13. **Notifications:**
    *   [ ] Receive a notification (e.g., new quote request - requires mocking/setup).
    *   [ ] Tap on a notification and verify navigation.
    *   [ ] Check the notification badge count updates correctly.

## Notes

*   These tests should ideally run against a controlled backend environment (staging or mock) to ensure consistency.
*   Tests involving external services like image pickers, push notifications, or payment gateways will require mocking or specific test setup.
*   Consider adding tests for edge cases, error handling (network errors, API errors), and different device sizes/orientations.

## Estructura de Carpetas

```
integration_test/
├── actions/            # Acciones comunes reutilizables para los tests
│   ├── auth_test_actions.dart       # Acciones de autenticación
│   ├── profile_test_actions.dart    # Acciones de perfil
│   ├── quotation_test_actions.dart  # Acciones de cotización
│   └── customer/                    # Acciones específicas para clientes
│       └── registration_actions.dart # Acciones para registro de clientes
├── config/             # Configuración global para los tests
│   ├── test_config.dart            # Configuración principal
│   ├── register_keys.dart          # Claves para los elementos UI
│   └── devices.json                # Configuración para dispositivos
├── data/               # Datos para pruebas
│   └── test_users.json             # Usuarios de prueba generados
├── fixtures/           # Datos estáticos para tests
├── flows/              # Flujos de prueba organizados por tipo de usuario
│   ├── customer/                   # Flujos para clientes
│   │   └── registration_flow_test.dart # Prueba de flujo de registro
│   └── artist/                     # Flujos para artistas
├── runner/             # Configuración para ejecutar tests
├── utils/              # Utilidades para los tests
│   ├── test_user_manager.dart      # Gestión de usuarios de prueba
│   ├── test_constants.dart         # Constantes compartidas
│   └── api/                        # Utilidades para API
│       └── api_client.dart         # Cliente API para tests
└── test_bundle.dart    # Punto de entrada para los tests
```

## Guía de Uso

### Ejecutar Tests

Para ejecutar todas las pruebas:

```bash
flutter test integration_test
```

Para ejecutar un test específico:

```bash
flutter test integration_test/flows/customer/registration_flow_test.dart
```

### Agregar Nuevos Tests

1. Crea un nuevo archivo en el directorio apropiado en `flows/`
2. Si necesitas funcionalidades comunes, agrégalas en `actions/`
3. Para constantes o utilidades, añádelas en `utils/`

### Convenciones

- Nombra los archivos de test con el sufijo `_test.dart`
- Nombra los archivos de acciones con el sufijo `_actions.dart`
- Usa `PatrolIntegrationTester` para interactuar con la aplicación
- Divide las pruebas en acciones reutilizables
- Documenta casos especiales o comportamientos inesperados

## Metodología

Estas pruebas de integración utilizan el paquete [Patrol](https://pub.dev/packages/patrol) que extiende las capacidades de Flutter Test, permitiendo interactuar con la UI y elementos nativos.

Las pruebas están organizadas en:

- **Acciones**: Funciones específicas reutilizables (tap, entrada de texto, etc.)
- **Flujos**: Secuencias completas de acciones que prueban escenarios específicos
- **Utilidades**: Herramientas comunes como manejo de datos de prueba 