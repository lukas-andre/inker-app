# README - Módulo de Pruebas de Integración

Este documento describe la estructura, convenciones y mejores prácticas del módulo de pruebas de integración de Inker Studio. Aquí encontrarás cómo ejecutar, extender y mantener los tests end-to-end de la aplicación.

---

## ¿Qué es este módulo?

El directorio `integration_test/` contiene pruebas de integración automatizadas que simulan flujos completos de usuario (Customer y Artist), validando la experiencia real y la interacción con servicios externos (API, Firebase, etc.).

Las pruebas están diseñadas para ejecutarse en dispositivos/emuladores reales y requieren un entorno de backend controlado (staging/mock) para resultados consistentes.

---

## Estructura de Carpetas

```
integration_test/
├── actions/            # Acciones reutilizables (tap, login, fill forms, etc.)
│   ├── auth_test_actions.dart
│   ├── profile_test_actions.dart
│   ├── quotation_test_actions.dart
│   ├── permission_test_action.dart
│   ├── artist/        # Acciones específicas de artista
│   └── customer/      # Acciones específicas de cliente
├── config/             # Configuración global
│   ├── test_config.dart
│   ├── devices.json
├── data/               # Datos de prueba (fixtures, usuarios, etc.)
│   ├── auth_test_data.dart
│   ├── customer_quotation_test_data.dart
├── fixtures/           # Datos estáticos (puede estar vacío)
├── flows/              # Flujos de prueba completos
│   ├── customer/       # Flujos de cliente
│   ├── artist/         # Flujos de artista
│   └── quotation_flow_test.dart # Flujos generales de cotización
├── runner/             # Utilidades para ejecución de tests
│   ├── test_runner.dart
│   ├── generate_devices_config.dart.dart
├── utils/              # Utilidades generales
│   ├── test_user_manager.dart
│   ├── test_constants.dart
│   ├── activation_service.dart
│   └── api/
│       └── api_client.dart
├── test_bundle.dart    # Punto de entrada de los tests
```

---

## ¿Cómo ejecutar los tests?

1. **Prepara un dispositivo/emulador** con la app instalada y configurada.
2. Desde la raíz del proyecto, ejecuta:

```bash
patrol test integration_test
```

- Para un test específico:

```bash
patrol test integration_test/flows/customer/registration_flow_test.dart
```

- Para ejecución avanzada (multi-dispositivo, CI, etc.), consulta los scripts en `runner/`.

---

## ¿Cómo agregar nuevos tests?

1. **Identifica el flujo**: ¿Es un flujo completo (flows/) o una acción reutilizable (actions/)?
2. **Crea el archivo** en el directorio correspondiente, siguiendo la convención:
   - Flujos: `nombre_flujo_test.dart`
   - Acciones: `nombre_accion_actions.dart`
3. **Usa las utilidades existentes** (`PatrolIntegrationTester`, `test_user_manager`, etc.) para evitar duplicación.
4. **Agrega datos de prueba** en `data/` si es necesario.
5. **Actualiza el [TODO_INTEGRATION_TESTS.md](./TODO_INTEGRATION_TESTS.md)** para reflejar la cobertura.

---

## Convenciones y buenas prácticas

- **Nombres de archivos**: snake_case, sufijo `_test.dart` para tests, `_actions.dart` para acciones.
- **Reutiliza acciones**: Si una acción (login, tap, fill) se repite, muévela a `actions/`.
- **Documenta casos especiales**: Usa comentarios para explicar workarounds, mocks, o dependencias externas.
- **Usa datos de prueba controlados**: No dependas de datos productivos o cambiantes.
- **Divide en flujos y acciones**: Los tests deben ser legibles y modulares.
- **Patrol**: Usa `PatrolIntegrationTester` para interacción avanzada con la UI y nativos.

---

## Descripción de carpetas principales

- **actions/**: Acciones atómicas y reutilizables (login, registro, tap, etc.).
- **flows/**: Flujos completos de usuario (registro, cotización, edición, etc.).
- **config/**: Configuración global, claves de UI, dispositivos.
- **data/**: Datos de prueba, usuarios, cotizaciones, etc.
- **fixtures/**: Datos estáticos (imágenes, json, etc.).
- **runner/**: Scripts/utilidades para ejecución avanzada, CI, multi-device.
- **utils/**: Utilidades generales, helpers, clientes API, manejo de usuarios.

---

## Ejemplo de flujo de test

```dart
import 'package:patrol/patrol.dart';
import '../actions/auth_test_actions.dart';

testWidgets('Customer can register and request a quotation', (tester) async {
  await tester.patrolLoginAsCustomer();
  await tester.patrolNavigateToArtistProfile();
  await tester.patrolRequestQuotation();
  // ... assertions y validaciones
});
```

---

## Mantenimiento y actualización

- **Actualiza este README** si cambian las convenciones o la estructura.
- **Actualiza el TODO** cada vez que se agregue o complete un flujo relevante.
- **Revisa dependencias** y mocks periódicamente para evitar flakiness.

---

## Recursos útiles

- [Patrol package](https://pub.dev/packages/patrol)
- [Flutter integration testing](https://docs.flutter.dev/testing/integration-tests)
- [README principal del proyecto](../README.md) 