 # TODO: cambiar estado se acerca en espera cambiar estados de acuerdo si lo esta viendo un artista o un customer solo los translates.
 hacer que cuando agende scrolee automaticamente al nivel donde se creo el evento. tambien siempre que se cambie el dia scrollear al inicio

 HERMANO QUEDA HACER CACHE DE LO POSIBLE NO IR TODO EL RATO A BUSCAR EL EVENTO
 AGREGAR EL COEHETE Y LA PANTALLA DE LOADING QUE HICIMOS OBVIO
 

# TODO: 04/01/2022

1. Al momento de hacer signIn con redes sociales, se esta creando la session antes de hacer el login oficial,
se podria hacer esto mas facil, creando primero el usuario, luego logearse y crear una session normal con esta info, así guardaremos el accessToken que es lo importante !
2. el id con el que se esta guardando la session no es el de inker, usar ese en el id ...
3. Hacer widgets reutilizables para las paginas de formulario de registro, RegisterLayout(inputs[], pageIndex) RegisterNextButton(pageIndex) RegisterBackButton(pageIndex) RegisterFinishButton(pageIndex) 
4. Add Regex validation for ExtraAddress, que sea o , Solo numero o numeros y letras y espacios

# Artistic Services Platform - TODO List

## Table of Contents
- [Customer Side](#customer-side)
- [Artist Side](#artist-side)
- [Shared Components](#shared-components)
- [Technical Tasks](#technical-tasks)

## Customer Side

### Quotation Request View
- [ ] Implement a form for customers to send details with images to the artist
- [ ] Add functionality to upload and preview multiple images
- [ ] Include fields for description, desired date, and any specific requirements

### Artist Profile View
- [ ] Display artist's portfolio, reviews, and availability calendar
- [ ] Implement a "Request Quotation" button that opens the Quotation Request View

### Quotations List View
- [ ] Create a list view of all quotations sent by the customer
- [ ] Display quotation status (Pending, Quoted, Accepted, Rejected, Appealed)
- [ ] Implement sorting and filtering options (by status, date, artist)

### Single Quotation View
- [ ] Show detailed information about the quotation (cost, date, reference images)
- [ ] Implement actions based on quotation status:
  - [ ] For "Quoted" status: Add "Accept", "Reject", and "Appeal" buttons
  - [ ] For "Appealed" status: Show the updated time suggested by the artist
- [ ] Display a history of status changes and communications

### Quotation Actions
- [ ] Implement "Accept Quotation" functionality
  - [ ] Update quotation status
  - [ ] Create an event in the customer's calendar
  - [ ] Send notification to the artist
- [ ] Implement "Reject Quotation" functionality
  - [ ] Update quotation status
  - [ ] Send notification to the artist
- [ ] Implement "Appeal Quotation" functionality
  - [ ] Allow customer to suggest a new time
  - [ ] Update quotation status
  - [ ] Send notification to the artist

### Notifications
- [ ] Implement a notification system for status updates
- [ ] Create notifications for quotation responses, event creation, and updates

## Artist Side

### Quotation Management View
- [ ] Create a list view of all received quotation requests
- [ ] Implement sorting and filtering options (by status, date, customer)

### Single Quotation View
- [ ] Display customer's request details and uploaded images
- [ ] Implement a form to respond to the quotation with cost and suggested date
- [ ] For "Appealed" status, show the customer's requested time change

### Quotation Response Actions
- [ ] Implement "Send Quotation" functionality
  - [ ] Update quotation status to "Quoted"
  - [ ] Send notification to the customer
- [ ] Implement "Accept Time Change" functionality for appealed quotations
  - [ ] Update quotation status to "Accepted"
  - [ ] Update the event in the artist's calendar
  - [ ] Send notification to the customer
- [ ] Implement "Reject Time Change" functionality for appealed quotations
  - [ ] Update quotation status to "Rejected"
  - [ ] Send notification to the customer

### Artist Calendar View
- [ ] Implement a calendar view showing all scheduled appointments
- [ ] Integrate with the quotation system to block out times for accepted quotations

### Notifications
- [ ] Implement a notification system for new quotation requests and status updates
- [ ] Create notifications for new requests, customer responses, and appointment confirmations

## Shared Components

### Chat/Messaging System
- [ ] Implement a real-time chat system for communication between customers and artists
- [ ] Integrate chat with the quotation system for context-aware conversations

### Review System
- [ ] Implement a review system for customers to rate and review artists after completed appointments
- [ ] Display aggregated reviews on artist profiles

### Payment Integration
- [ ] Integrate a payment system for processing deposits or full payments upon quotation acceptance

### Reporting and Analytics
- [ ] Implement analytics dashboard for tracking quotation conversion rates, popular services, etc.

## Technical Tasks

- [ ] Set up state management for handling quotation status changes
- [ ] Implement API endpoints for all quotation-related actions
- [ ] Set up WebSocket connections for real-time updates and notifications
- [ ] Implement proper error handling and validation for all forms and actions
- [ ] Ensure responsive design for all views on both mobile and desktop

## Priority and Timeline

1. Start with the customer's quotation view when entering an artist's profile
2. Develop the customer's quotations list view
3. Implement the artist's quotation management view
4. Integrate shared components (chat, reviews, payments) as development progresses
5. Continuously refine and optimize based on user feedback and testing

Remember to adjust priorities based on your project's specific needs and resources.
