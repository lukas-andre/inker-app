# Plan de Implementación: Menú Secreto para Cambio de Ambiente

## Objetivo
Implementar un menú secreto accesible de forma oculta que permita cambiar fácilmente entre ambientes (Staging y Production) sin usar flavors, con la configuración almacenada en Firebase Remote Config.

## Arquitectura Propuesta

### 1. Estructura de Remote Config
En Firebase Remote Config, agregar una nueva key llamada `environments_config` con el siguiente JSON:

```json
{
  "environments": {
    "STAGING": {
      "INKER_API_URL": "https://staging-api.inkerapp.com",
      "name": "Staging",
      "description": "Ambiente de pruebas"
    },
    "PRODUCTION": {
      "INKER_API_URL": "https://api.inkerapp.com",
      "name": "Production",
      "description": "Ambiente productivo"
    }
  }
}
```

### 2. Componentes a Desarrollar

#### 2.1. EnvironmentService
- **Ubicación**: `lib/domain/services/environment/environment_service.dart`
- **Responsabilidades**:
  - Gestionar el ambiente actual
  - Persistir la selección del usuario
  - Proveer la URL de API correspondiente
  - Notificar cambios de ambiente

#### 2.2. Extensión de RemoteConfigService
- **Archivo**: `lib/data/firebase/remote_config_service.dart`
- **Cambios**:
  - Agregar método para obtener configuración de ambientes
  - Implementar lógica para cambiar dinámicamente la URL según el ambiente

#### 2.3. SecretMenuWidget
- **Ubicación**: `lib/ui/shared/widgets/secret_menu_widget.dart`
- **Características**:
  - Widget invisible con GestureDetector
  - Activación por patrón secreto (ej: 5 toques en 2 segundos)
  - Dialog con lista de ambientes disponibles
  - Indicador visual del ambiente actual

#### 2.4. EnvironmentBloc
- **Ubicación**: `lib/domain/blocs/environment/environment_bloc.dart`
- **Estados**:
  - EnvironmentInitial
  - EnvironmentLoading
  - EnvironmentLoaded (con ambiente actual)
  - EnvironmentChanged

### 3. Integración en la App

#### 3.1. Puntos de Acceso al Menú Secreto
El menú secreto será accesible desde:

1. **OnBoardingPage** (`lib/features/onboarding/ui/onboarding/onboarding_page.dart`)
   - Zona tappeable en la esquina superior derecha

2. **LoginPage** (`lib/features/login/ui/login/login_page.dart`)
   - Zona tappeable en el logo o título

3. **CustomerAppPage** (`lib/ui/customer/app/customer_app_page.dart`)
   - En el perfil del usuario, zona específica

4. **ArtistAppPage** (`lib/ui/artist/artist_home_page.dart`)
   - En la tab de perfil, zona específica

#### 3.2. Actualización de HttpClientService
- Modificar para usar URL dinámica desde EnvironmentService
- Implementar refresh de cliente HTTP al cambiar ambiente
- Manejar reconexión automática

### 4. Flujo de Implementación

#### Fase 1: Servicios Base
1. Crear EnvironmentService con persistencia en SharedPreferences
2. Extender RemoteConfigService para manejar environments_config
3. Crear modelos para Environment (name, url, description)

#### Fase 2: State Management
1. Implementar EnvironmentBloc
2. Agregar provider en dependencies.dart
3. Integrar en app_view.dart

#### Fase 3: UI del Menú Secreto
1. Crear SecretMenuWidget reutilizable
2. Implementar diálogo de selección de ambiente
3. Agregar indicador visual del ambiente actual

#### Fase 4: Integración
1. Agregar SecretMenuWidget en las 4 vistas principales
2. Actualizar HttpClientService para usar ambiente dinámico
3. Implementar lógica de reinicio de conexiones

#### Fase 5: Testing y Refinamiento
1. Probar cambio de ambiente en tiempo real
2. Verificar persistencia entre sesiones
3. Agregar logs para debugging

### 5. Consideraciones de Seguridad

1. **Patrón de Activación**: 
   - 5 toques consecutivos en menos de 2 segundos
   - Solo en zonas específicas no visibles

2. **Validación**:
   - Solo disponible en builds de desarrollo/staging
   - Opcional: PIN o contraseña adicional

3. **Indicadores Visuales**:
   - Badge sutil cuando no está en producción
   - Toast/SnackBar al cambiar ambiente

### 6. Configuración Adicional en Remote Config

Además de la URL, se puede incluir:
- Feature flags específicos por ambiente
- Timeouts de red diferentes
- Niveles de logging
- Endpoints específicos de servicios

### 7. Tareas Detalladas

1. **Crear modelos de datos**
   - Environment model con propiedades necesarias
   - EnvironmentConfig para parsear Remote Config

2. **Implementar EnvironmentService**
   - Métodos: getCurrentEnvironment(), setEnvironment(), getApiUrl()
   - Persistencia con SharedPreferences
   - Stream para notificar cambios

3. **Extender RemoteConfigService**
   - Agregar getEnvironmentsConfig()
   - Cache de configuraciones

4. **Crear EnvironmentBloc**
   - Eventos: LoadEnvironments, ChangeEnvironment
   - Estados según diagrama

5. **Implementar SecretMenuWidget**
   - GestureDetector con contador de toques
   - Timer para resetear contador
   - Dialog con RadioListTile para ambientes

6. **Integrar en vistas**
   - Wrap de zonas específicas con SecretMenuWidget
   - Manejo de navegación post-cambio

7. **Actualizar HttpClientService**
   - Inyectar EnvironmentService
   - Método para recrear cliente con nueva URL
   - Manejo de errores de conexión

8. **Testing**
   - Unit tests para servicios
   - Widget tests para menú secreto
   - Integration tests para cambio de ambiente

### 8. Ejemplo de Uso

```dart
// En cualquier vista principal
Stack(
  children: [
    // Contenido normal de la vista
    YourMainContent(),
    
    // Menú secreto posicionado
    Positioned(
      top: 50,
      right: 20,
      child: SecretMenuWidget(
        child: Container(
          width: 50,
          height: 50,
          color: Colors.transparent,
        ),
      ),
    ),
  ],
)
```

### 9. Beneficios

- No requiere recompilación para cambiar ambiente
- Cambio instantáneo sin reiniciar app
- Fácil testing de diferentes ambientes
- Control centralizado desde Remote Config
- Útil para demos y debugging

### 10. Próximos Pasos

1. Validar el plan con el equipo
2. Configurar Firebase Remote Config
3. Comenzar implementación siguiendo las fases
4. Documentar proceso de activación para QA