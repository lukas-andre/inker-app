# Test de Integración

Este directorio contiene las pruebas de integración para la aplicación Inker Studio. Las pruebas están organizadas de manera modular para facilitar el mantenimiento y la extensibilidad.

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