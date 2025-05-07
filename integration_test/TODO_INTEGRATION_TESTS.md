# TODO Integración - Inker Studio

Este documento lista los tests de integración implementados y los pendientes, organizados por feature y flujo crítico. Se actualiza conforme avanza la cobertura.

## Estado General

- [x] Flujos básicos de registro y login (Customer/Artist)
- [x] Flujos de gestión de stencils y works (Artist)
- [ ] Flujos completos de cotizaciones abiertas y tradicionales (Customer/Artist)
- [ ] Flujos de generación y selección de diseños AI
- [ ] Flujos de chat/mensajería en cotizaciones
- [ ] Edición de cotizaciones y ofertas
- [ ] Flujos de aceptación/cancelación de cotizaciones

---

## Flujos Comunes

- [x] Registro Customer (`flows/customer/registration_flow_test.dart`)
- [x] Registro Artist (`flows/artist/registration_flow_test.dart`)
- [x] Login Customer/Artist (`flows/customer/auth_flow_test.dart`, `flows/artist/auth_flow_test.dart`)
- [ ] Registro con datos inválidos (duplicado, password débil)
- [ ] Login con credenciales incorrectas
- [ ] Logout

## Customer

### Exploración de Artistas
- [ ] Navegar a "Explorar"
- [ ] Cambiar entre vista mapa/lista
- [ ] Buscar artista
- [ ] Aplicar filtros
- [ ] Ver perfil de artista

### Cotizaciones Tradicionales
- [ ] Iniciar solicitud desde perfil de artista
- [ ] Completar y enviar formulario (`@create_quotation_page.dart`)
- [ ] Ver solicitudes en "Mis Solicitudes"
- [ ] Ver detalles de cotización
- [ ] Aceptar/rechazar cotización
- [ ] Editar descripción/presupuesto de cotización
- [ ] Cancelar cotización

### Cotizaciones Abiertas
- [ ] Crear cotización abierta (nuevo flujo)
- [ ] Seleccionar diseño generado (`@select_generated_design_bottomsheet.dart`)
- [ ] Ver cotizaciones abiertas en tab correspondiente (`@open_quotations_tab_view.dart`)
- [ ] Ver/editar/cancelar cotización abierta
- [ ] Ver ofertas recibidas
- [ ] Aceptar oferta
- [ ] Mensajería con artista en cotización abierta (`@quotation_offer_message_page.dart`)

### Inspiración
- [ ] Buscar stencils/works
- [ ] Ver detalles

### Citas
- [ ] Ver próximas y pasadas
- [ ] Crear cita desde cotización aceptada

## Artist

### Gestión de Stencils/Works
- [x] Agregar/editar/eliminar stencil (`add_stencil_test.dart`, `update_delete_stencil_test.dart`)
- [x] Agregar/editar/eliminar work (`add_work_test.dart`, `update_work_test.dart`, `update_delete_work_test.dart`, `delete_work_test.dart`)

### Cotizaciones Abiertas
- [ ] Ver tab de cotizaciones abiertas (`@work_tab_page.dart`)
- [ ] Ver cotizaciones disponibles y en las que participa
- [ ] Enviar oferta a cotización abierta
- [ ] Editar oferta enviada (`@quotation_offer_message_page.dart`)
- [ ] Mensajería con customer

### Cotizaciones Tradicionales
- [ ] Ver solicitudes recibidas
- [ ] Responder con precio/detalles
- [ ] Declinar solicitud

### Agenda
- [ ] Ver y refrescar agenda
- [ ] Modificar disponibilidad

### Perfil
- [x] Ver y editar perfil

## Chat/Mensajería
- [ ] Flujo completo de mensajes en cotizaciones abiertas y tradicionales
- [ ] Adjuntar imágenes
- [ ] Ver historial

## Generador de Tatuajes AI
- [ ] Generar diseño (`@tattoo_generator_page.dart`)
- [ ] Seleccionar diseño para cotización abierta
- [ ] Ver historial y favoritos

---

## Notas
- Los tests deben cubrir tanto flujos exitosos como errores y edge cases.
- Se recomienda usar datos de prueba controlados y mocks para servicios externos.
- Actualizar este archivo cada vez que se agregue o complete un test relevante. 