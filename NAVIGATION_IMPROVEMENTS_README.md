# Mejoras de Navegación y Usabilidad - Inker App

## Resumen Ejecutivo

Este documento detalla las mejoras de navegación y usabilidad necesarias para optimizar la experiencia de usuario en la aplicación Inker. Las mejoras se centran en:

1. **Navegación post-acción** - Redirigir automáticamente a las vistas relevantes después de acciones importantes
2. **Botones de refresh** - Agregar botones de recarga en todas las vistas principales
3. **Corrección de bugs** - Solucionar el problema de navegación al enviar ofertas como artista
4. **Actualización automática** - Refrescar vistas al navegar entre tabs

## Arquitectura y Patrones Actuales

### Navegación
- **Sistema de rutas**: `lib/routes.dart` - Define todas las rutas nombradas
- **Navegación principal**: Tabs en `CustomerAppPage` y `ArtistAppPage`
- **BLoC pattern**: Usado para estado y navegación reactiva

### Archivos Clave
```
lib/ui/customer/app/customer_app_page.dart     # App principal del cliente
lib/ui/artist/artist_home_page.dart            # App principal del artista
lib/ui/artist/work/work_tab_page.dart          # Tabs de trabajo del artista
lib/routes.dart                                 # Definición de rutas
lib/dependencies/dependencies.dart              # Inyección de dependencias
lib/ui/views/app_view.dart                      # Vista principal de la app
```

## Tareas de Implementación

### 1. Navegación Post-Acción para Clientes

#### 1.1 Después de crear cotización desde generador de tatuajes
**Archivos a modificar:**
- `lib/ui/customer/quotation/create/create_quotation_page.dart`
- `lib/ui/tattoo_generator/tattoo_generator_page.dart`
- `lib/ui/shared/success_animation_page.dart`

**Implementación:**
```dart
// En create_quotation_page.dart, línea ~97
quotationCreated: (id, message, created, referenceImages) {
  if (created) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => SuccessAnimationPage(
          title: S.of(context).quotationCreatedSuccessfullyTitle,
          subtitle: S.of(context).quotationCreatedSuccessfullySubtitle,
          state: AnimationState.completed,
          onAnimationComplete: () {
            // Navegar a CustomerAppPage en tab de cotizaciones
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => CustomerAppPage(initialTab: 1), // Tab 1 = Cotizaciones
              ),
              (route) => false,
            );
          },
        ),
      ),
    );
  }
}
```

**Modificar CustomerAppPage para aceptar tab inicial:**
```dart
class CustomerAppPage extends StatefulWidget {
  final int? initialTab;
  const CustomerAppPage({super.key, this.initialTab});
}

// En _CustomerAppPageState
@override
void initState() {
  super.initState();
  _selectedIndex = widget.initialTab ?? 2; // Default: Inspiración
  // ...resto del código
}
```

#### 1.2 Después de aceptar una oferta
**Archivos a modificar:**
- `lib/ui/quotation/quotation_detail_page.dart` (línea ~1866)
- `lib/domain/blocs/quoation/quotation_list/quotation_list_bloc.dart`

**Implementación:**
```dart
// En _showAcceptOfferConfirmation(), después de aceptar
if (confirmed == true) {
  context
      .read<QuotationListBloc>()
      .add(QuotationListEvent.acceptOffer(
        quotationId: quotationId,
        offerId: offer.id,
      ));
  
  // Escuchar el estado para navegar después del éxito
  context.read<QuotationListBloc>().stream.listen((state) {
    if (state is QuotationListLoaded) {
      // Navegar a citas después de aceptar
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => CustomerAppPage(initialTab: 3), // Tab 3 = Citas
        ),
        (route) => false,
      );
    }
  });
}
```

### 2. Agregar Botones de Refresh

#### 2.1 CustomerAppPage - Refresh en todas las tabs
**Archivo:** `lib/ui/customer/app/customer_app_page.dart`

**Modificar método `_getAppBarActions()` (línea ~111):**
```dart
List<Widget> _getAppBarActions() {
  final List<Widget> actions = [];

  // Agregar botón de refresh para todas las tabs excepto perfil
  if (_selectedIndex != 4) {
    actions.add(
      IconButton(
        icon: const Icon(Icons.refresh, color: Colors.white),
        onPressed: () {
          switch (_selectedIndex) {
            case 0: // Explorar
              context.read<ExplorerPageBloc>().add(
                const ExplorerPageEvent.refresh(),
              );
              break;
            case 1: // Cotizaciones
              // Refrescar la tab activa de cotizaciones
              context.read<QuotationListBloc>().add(
                const QuotationListEvent.refreshCurrentTab(),
              );
              context.read<OpenQuotationListBloc>().add(
                const OpenQuotationListEvent.refreshOpenQuotations(),
              );
              break;
            case 2: // Inspiración
              context.read<InspirationSearchBloc>().add(
                const InspirationSearchEvent.refresh(),
              );
              break;
            case 3: // Citas
              context.read<AppointmentBloc>().add(
                const AppointmentEvent.loadAppointments(),
              );
              break;
          }
        },
      ),
    );
  }

  // Agregar acciones específicas de cada página...
  // (resto del código existente)
}
```

#### 2.2 ArtistAppPage - Refresh en tabs faltantes
**Archivo:** `lib/ui/artist/artist_home_page.dart`

**Modificar método `_getAppBarActions()` (línea ~90):**
```dart
List<Widget> _getAppBarActions() {
  final List<Widget> actions = [];
  
  // Agregar refresh para todas las tabs excepto perfil
  if (_selectedIndex != 4) {
    actions.add(
      IconButton(
        icon: const Icon(Icons.refresh, color: Colors.white),
        onPressed: () {
          switch (_selectedIndex) {
            case 0: // Agenda (ya existe)
              context.read<ArtistAgendaBloc>()
                .add(const ArtistAgendaEvent.refreshed());
              break;
            case 1: // Cotizaciones
              context.read<QuotationListBloc>().add(
                const QuotationListEvent.loadQuotations([], false, QuotationType.DIRECT),
              );
              break;
            case 2: // Trabajos
              // Refrescar ambas tabs de trabajos
              context.read<OpenQuotationListBloc>().add(
                const OpenQuotationListEvent.refreshOpenQuotations(),
              );
              context.read<ParticipatingQuotationsBloc>().add(
                const ParticipatingQuotationsEvent.refresh(),
              );
              break;
            case 3: // Consentimientos
              context.read<FormTemplateBloc>().add(
                const FormTemplateEvent.loadTemplates(),
              );
              break;
          }
        },
      ),
    );
  }
  
  // Resto del código existente...
}
```

### 3. Corregir Bug de Navegación del Artista

#### 3.1 Modificar navegación después de enviar oferta
**Archivo:** `lib/ui/quotation/artist_open_quotation_offer_page.dart`

**Problema:** El código actual hace dos `pop()` que rompen la navegación cuando se viene desde `work_tab_page`.

**Solución - Modificar el success handler (línea ~110):**
```dart
success: () {
  Navigator.of(context).pop(); // Cerrar diálogo de carga
  _showSuccessAnimationPage(
    context,
    AnimationState.completed,
    l10n.offerSubmittedTitle,
    l10n.offerSubmittedMessage,
    onComplete: () {
      // Navegar directamente a ArtistAppPage en tab "Mis Propuestas"
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: context.read<WorkTabBloc>(),
            child: ArtistAppPage(
              initialTab: 2, // Tab de Trabajos
              workTabIndex: 1, // Sub-tab "Mis Propuestas"
            ),
          ),
        ),
        (route) => false,
      );
    },
  );
},
```

**Modificar ArtistAppPage para aceptar configuración inicial:**
```dart
class ArtistAppPage extends StatefulWidget {
  final int? initialTab;
  final int? workTabIndex; // Para especificar sub-tab en WorkTabPage
  
  const ArtistAppPage({
    super.key, 
    this.initialTab,
    this.workTabIndex,
  });
}
```

**Modificar WorkTabPage para aceptar índice inicial:**
```dart
class WorkTabPage extends StatefulWidget {
  final int? initialTabIndex;
  const WorkTabPage({super.key, this.initialTabIndex});
}

// En initState
@override
void initState() {
  super.initState();
  _tabController = TabController(
    length: 2, 
    vsync: this,
    initialIndex: widget.initialTabIndex ?? 0,
  );
}
```

### 4. Refresh Automático al Cambiar de Tab

#### 4.1 CustomerAppPage - Refresh al cambiar tabs
**Archivo:** `lib/ui/customer/app/customer_app_page.dart`

**Modificar método `_onItemTapped` (línea ~89):**
```dart
void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
  
  // Refresh automático al cambiar de tab
  switch (index) {
    case 0: // Explorar
      context.read<MapBloc>().add(const MapEvent.refresh());
      break;
    case 1: // Cotizaciones
      context.read<QuotationListBloc>().add(
        const QuotationListEvent.refreshCurrentTab(),
      );
      break;
    case 2: // Inspiración
      // Ya se carga automáticamente
      break;
    case 3: // Citas
      context.read<AppointmentBloc>().add(
        const AppointmentEvent.loadAppointments(),
      );
      break;
    case 4: // Perfil
      context.read<CustomerMyProfileBloc>().add(
        const CustomerMyProfileEvent.refresh(),
      );
      break;
  }
}
```

## Consideraciones Técnicas

### Multiplataforma
- Todas las navegaciones deben funcionar en iOS, Android y Web
- Usar `Navigator.pushAndRemoveUntil` para limpiar el stack de navegación
- Evitar `Platform.isWeb` para lógica de navegación

### Estado y BLoCs
- Asegurar que los BLoCs necesarios estén disponibles al navegar
- Usar `BlocProvider.value` cuando sea necesario mantener instancias existentes
- Limpiar listeners y subscriptions apropiadamente

### Testing
- Actualizar tests de integración para nuevos flujos de navegación
- Verificar que los deep links sigan funcionando
- Probar navegación hacia atrás en todos los flujos

## TODOs Pendientes

### Bug de Refresh en WorkTabPage del Artista
- **Problema**: El botón de refresh en la tab de "Trabajos" siempre refresca OpenQuotationListBloc incluso cuando está en la tab "Mis Propuestas"
- **Solución propuesta**: Implementar un sistema para detectar qué sub-tab está activa dentro de WorkTabPage
- **Archivos afectados**: 
  - `lib/ui/artist/artist_home_page.dart`
  - `lib/ui/artist/work/work_tab_page.dart`

## Mejoras Adicionales Sugeridas

### 1. Navegación desde Notificaciones
- Al hacer tap en una notificación de cotización, navegar directamente a la tab correspondiente
- Implementar deep linking para diferentes tipos de notificaciones

### 2. Indicadores de Estado
- Mostrar badges en tabs cuando hay contenido nuevo
- Implementar pull-to-refresh en todas las listas

### 3. Transiciones Suaves
- Usar `Hero` animations para transiciones entre vistas relacionadas
- Implementar transiciones personalizadas para cambios de tab

## Cronograma de Implementación

1. **Fase 1** - Botones de refresh (1-2 días)
2. **Fase 2** - Navegación post-acción del cliente (2-3 días)
3. **Fase 3** - Corrección bug navegación artista (1 día)
4. **Fase 4** - Refresh automático y mejoras adicionales (2-3 días)

## Archivos que Requieren Modificación

### Alta Prioridad
- `lib/ui/customer/app/customer_app_page.dart`
- `lib/ui/artist/artist_home_page.dart`
- `lib/ui/quotation/artist_open_quotation_offer_page.dart`
- `lib/ui/customer/quotation/create/create_quotation_page.dart`

### Media Prioridad
- `lib/ui/artist/work/work_tab_page.dart`
- `lib/ui/quotation/quotation_detail_page.dart`
- `lib/ui/shared/success_animation_page.dart`

### Baja Prioridad
- `lib/routes.dart` (para deep linking)
- `lib/ui/notifications/notifications_wrapper.dart`
- Tests de integración relacionados