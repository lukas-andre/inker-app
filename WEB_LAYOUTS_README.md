# Layouts Exclusivos para Web - Inker Studio

## Visión General del Proyecto

Este documento describe la implementación de layouts exclusivos para la versión web de Inker Studio, optimizando la experiencia de usuario para pantallas más grandes y aprovechando el espacio adicional disponible.

## Páginas a Optimizar

### 1. Página de Exploración (ExplorerPage)
**Ubicación**: `lib/ui/customer/explore/explorer_page.dart`

#### Mejoras Propuestas:
- **Sección de Artistas Destacados**: Carrusel horizontal con artistas mejor calificados (rating ≥ 4.5)
- **Grid Mejorado**: Cambiar de 2 columnas a 3-4 columnas en pantallas grandes
- **Tarjetas Rediseñadas**: Tamaño más apropiado para web, evitando que se vean gigantes
- **Vista de Mapa Temporal**: Mostrar mensaje informativo sobre disponibilidad limitada
- **Navegación Mejorada**: Mejor integración con la navegación web

#### Vista de Lista Actual:
- Grid de 2 columnas que se ve desproporcionado en web
- Tarjetas demasiado grandes para pantallas de escritorio
- Falta de organización visual por categorías

### 2. Perfil de Artista (ArtistProfilePage)
**Ubicación**: `lib/ui/customer/artist_profile/artist_profile_page.dart`

#### Mejoras Propuestas:
- **Layout de Dos Columnas**: Información del artista en una columna, galería en otra
- **Galería Expandida**: Mejor visualización de trabajos con más imágenes visibles
- **Información Extendida**: Más espacio para mostrar detalles del artista
- **Botones de Acción Reposicionados**: Mejor ubicación para cotización y compartir
- **Navegación Contextual**: Breadcrumbs y navegación mejorada

#### Problemas Actuales en Web:
- Layout vertical que no aprovecha el espacio horizontal
- Elementos demasiado estirados en pantallas anchas
- Experiencia de navegación inconsistente

## Paleta de Colores y Estilos

### Colores Principales:
- **Primary**: `#141D3C` (Azul marino oscuro)
- **Secondary**: `#7450ff` (Morado vibrante)
- **Tertiary**: `#686D90` (Gris azulado)
- **Background**: `#1F223C` (Explorer secondary)
- **Accent**: `#FDD22E` (Amarillo)
- **Error/Alert**: `#ff076a` (Rosa/Rojo)

### Tipografía:
- **Familia**: Poppins
- **Color Base**: `#F2F2F2` (Blanco/Gris claro)
- **Tamaños**: 12px (caption) a 24px (headline1)
- **Peso**: Normal a Bold según jerarquía

## Características del Diseño Web

### Responsive Design:
- **Mobile First**: Mantener compatibilidad con diseño móvil existente
- **Breakpoints**: Implementar puntos de quiebre para tablet y desktop
- **Flexibilidad**: Adaptación fluida entre diferentes tamaños de pantalla

### Experiencia de Usuario:
- **Navegación Intuitiva**: Breadcrumbs y menús contextuales
- **Carga Rápida**: Optimización de imágenes y lazy loading
- **Interactividad**: Hover effects y transiciones suaves
- **Accesibilidad**: Contraste adecuado y navegación por teclado

### Componentes Nuevos a Crear:
1. **Carrusel de Artistas Destacados**
2. **Grid Responsivo Mejorado**
3. **Layout de Dos Columnas para Perfil**
4. **Mensaje de Vista de Mapa Temporal**
5. **Navegación Web Contextual**

## Consideraciones Técnicas

### Detección de Plataforma:
- Utilizar `PlatformService` existente para detectar web
- Renderizar componentes específicos según plataforma
- Mantener los mismos BLoCs y lógica de negocio

### Arquitectura:
- **Reutilización de Código**: Mantener BLoCs existentes
- **Separación de Concerns**: Views específicas para web
- **Consistencia**: Usar theme y estilos existentes
- **Escalabilidad**: Preparar para futuras mejoras

## Beneficios Esperados

### Para Usuarios:
- **Mejor Experiencia Visual**: Layouts optimizados para pantallas grandes
- **Mayor Información**: Más contenido visible sin scroll excesivo
- **Navegación Eficiente**: Acceso más rápido a funcionalidades
- **Profesionalismo**: Apariencia más pulida y moderna

### Para el Negocio:
- **Mayor Engagement**: Usuarios pasan más tiempo explorando
- **Conversión Mejorada**: Proceso de cotización más accesible
- **Diferenciación**: Ventaja competitiva en plataforma web
- **Escalabilidad**: Base sólida para futuras funcionalidades web

## Cronograma de Implementación

1. **Fase 1**: Crear layouts base para ExplorerPage
2. **Fase 2**: Implementar vista de mapa temporal
3. **Fase 3**: Optimizar ArtistProfilePage para web
4. **Fase 4**: Testing y refinamiento
5. **Fase 5**: Lanzamiento y monitoreo

Este proyecto transformará la experiencia web de Inker Studio, aprovechando las fortalezas únicas de la plataforma web mientras mantiene la coherencia con la aplicación móvil.