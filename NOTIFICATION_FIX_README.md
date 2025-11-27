# Plan de corrección de problemas identificados

## DONE ✅

### 1. Notificaciones web sin redirección (MVP) ✅
- Modificado `NotificationsWrapper` para detectar plataforma web usando `PlatformService`
- Desactivada la navegación al hacer tap en notificaciones cuando se ejecuta en web
- Desactivada la navegación automática de `pendingNavigation` en web
- Las notificaciones en web ahora solo muestran información sin redireccionar

**Archivos modificados:**
- `lib/ui/notifications/notifications_wrapper.dart`:
  - Línea 89: Agregada condición `!platformService.isWeb` antes de navegar en onTap
  - Línea 189: Agregada condición `!platformService.isWeb` antes de navegar con pendingNavigation

### 2. Explorer web se queda cargando infinito ✅
- Convertido `ExplorerListViewWeb` de StatelessWidget a StatefulWidget
- Agregado manejo de estados de carga con timeout de 10 segundos
- Implementado indicador de carga mientras se espera por los datos
- Agregado estado de error con botón de reintentar cuando el timeout se activa
- Agregado logging para debuggear el flujo de carga (con prints temporales)

**Archivos modificados:**
- `lib/ui/customer/explore/views/list/explorer_list_view_web.dart`:
  - Líneas 11-35: Convertido a StatefulWidget con manejo de timeout
  - Líneas 45-64: Agregado indicador de carga explícito
  - Líneas 67-110: Agregado estado de error con botón de reintentar
  - Líneas 25, 29, 41, 45, 51: Agregados logs para debugging

## 1. Notificaciones web sin redirección (MVP)

### Problema:
Las notificaciones web están configuradas para hacer redirección cuando se presionan, lo cual es complejo de implementar correctamente en web.

### Solución propuesta:
- Modificar `NotificationsWrapper` para detectar si la plataforma es web
- En web, las notificaciones solo mostrarán la información sin realizar navegación al hacer tap
- Mantener la funcionalidad de navegación solo para mobile (iOS/Android)

### Archivos a modificar:
- `lib/ui/notifications/notifications_wrapper.dart` - Líneas 85-98 y 184-195

## 2. Explorer web se queda cargando infinito

### Problema:
`explorer_list_view_web.dart` a veces se queda cargando infinitamente. No es un problema del backend sino algo que se bloquea en el frontend.

### Posibles causas identificadas:
- El BlocBuilder puede estar esperando un estado específico que nunca llega
- No hay manejo del estado de carga inicial
- Falta validación del estado antes de renderizar

### Solución propuesta:
- Agregar manejo explícito del estado de carga
- Implementar timeout para detectar cuando se bloquea
- Agregar logs para debuggear el problema

### Archivos a modificar:
- `lib/ui/customer/explore/views/list/explorer_list_view_web.dart` - Líneas 16-39

## 3. Imagen por defecto inconsistente entre web y móvil

### Problema:
La versión móvil usa imágenes temporales de prueba (líneas 40-51 en `explorer_list_view.dart`) mientras que la web usa un placeholder más profesional.

### Solución propuesta:
- Crear un widget compartido para imagen por defecto de estudios
- Usar el mismo estilo de placeholder que la versión web en móvil
- Eliminar las URLs hardcodeadas de imágenes de prueba

### Archivos a modificar:
- `lib/ui/customer/explore/views/list/explorer_list_view.dart` - Líneas 39-51 y 124-126
- `lib/ui/customer/explore/widgets/artist_item_web.dart` - Líneas 106-114 (referencia del estilo web)

## Orden de implementación:
1. Primero: Corregir notificaciones web (más crítico para MVP)
2. Segundo: Solucionar problema de carga infinita en web
3. Tercero: Unificar imágenes por defecto