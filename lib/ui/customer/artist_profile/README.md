# Artist Profile Module Documentation

Este módulo maneja la visualización del perfil de artistas para usuarios clientes.

## Archivos Principales

- **artist_profile_page.dart**: Página principal que contiene toda la estructura del perfil del artista.
- **widgets/artist_profile_header.dart**: Encabezado del perfil con foto, nombre, descripción y botón de seguir.
- **widgets/artist_profile_gallery_section.dart**: Sección de galería con pestañas para portafolio y trabajos completados.
- **widgets/artist_portfolio_gallery.dart**: Galería de portafolio que muestra trabajos y stencils del artista.
- **widgets/artist_works_gallery.dart**: Galería que muestra los trabajos completados provenientes de la agenda.
- **widgets/artist_profile_contact.dart**: Sección de contacto con información del artista.
- **widgets/image_viewer_dialog.dart**: Diálogo para ver imágenes en tamaño completo.

## Cubits y Estados

- **domain/blocs/artist/artist_profile_bloc.dart**: Maneja el estado principal del perfil del artista.
- **domain/blocs/artist/artist_works_cubit/artist_works_cubit.dart**: Maneja la carga de trabajos del artista.
- **domain/blocs/artist/artist_portfolio_cubit/artist_portfolio_cubit.dart**: Maneja la carga del portafolio (stencils y trabajos).

## Servicios Utilizados

- **WorkService**: Para obtener los trabajos del artista.
- **StencilService**: Para obtener los stencils del artista.
- **AgendaService**: Para obtener los trabajos completados del agenda.
- **SessionService**: Para manejo de sesión y tokens.

## Navegación

- Ver Reseñas: Navega a `/artist-reviews`
- Ver trabajo detallado: Muestra un modal con detalles del trabajo
- Ver stencil detallado: Muestra un modal con detalles del stencil

## Características

- Visualización de información básica del artista
- Portafolio organizado en pestañas (Trabajos y Stencils)
- Trabajos completados de la agenda
- Visualización de imágenes en detalle
- Información de contacto
- Botón de seguir artista
- Visualización de estadísticas del artista