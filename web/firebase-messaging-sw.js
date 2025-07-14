importScripts('https://www.gstatic.com/firebasejs/9.0.0/firebase-app-compat.js');
importScripts('https://www.gstatic.com/firebasejs/9.0.0/firebase-messaging-compat.js');

// Initialize Firebase app
firebase.initializeApp({
  apiKey: 'AIzaSyAFdDMj5hhbhAqus8126RO1nM-4rhYN2Fo',
  authDomain: 'inker-5ff7d.firebaseapp.com',
  projectId: 'inker-5ff7d',
  storageBucket: 'inker-5ff7d.firebasestorage.app',
  messagingSenderId: '552111998838',
  appId: '1:552111998838:web:22c4243be9c467ed479c57'
});

const messaging = firebase.messaging();

// Handle background messages
messaging.onBackgroundMessage((payload) => {
  console.log('[firebase-messaging-sw.js] Received background message ', payload);
  
  const notificationTitle = payload.notification.title || 'Nueva notificación';
  const notificationOptions = {
    body: payload.notification.body || 'Tienes una nueva notificación',
    icon: '/icon-192x192.png',
    badge: '/icon-72x72.png',
    vibrate: [200, 500, 200],
    data: payload.data || {},
    actions: [
      {
        action: 'view',
        title: 'Ver'
      },
      {
        action: 'close',
        title: 'Cerrar'
      }
    ],
    requireInteraction: true,
    tag: payload.data?.notificationId || 'default'
  };

  return self.registration.showNotification(notificationTitle, notificationOptions);
});

// Handle notification clicks
self.addEventListener('notificationclick', (event) => {
  console.log('[firebase-messaging-sw.js] Notification click received.', event);
  
  event.notification.close();

  if (event.action === 'close') {
    return;
  }

  // Build the URL based on notification data
  let urlToOpen = '/';
  
  if (event.notification.data) {
    const data = event.notification.data;
    
    // Handle different notification types
    if (data.type === 'EVENT_STATUS_CHANGED' || 
        data.type === 'EVENT_CREATED' || 
        data.type === 'EVENT_UPDATED' || 
        data.type === 'EVENT_CANCELED') {
      if (data.eventId) {
        urlToOpen = `/agendaEventDetail/${data.eventId}`;
      }
    } else if (data.type && data.type.includes('QUOTATION_')) {
      if (data.quotationId) {
        urlToOpen = `/quotationDetail/${data.quotationId}`;
      }
    }
    
    // If a specific link is provided, use it
    if (data.link) {
      urlToOpen = data.link;
    }
  }

  event.waitUntil(
    clients.matchAll({
      type: 'window',
      includeUncontrolled: true
    }).then((windowClients) => {
      // Check if there is already a window/tab open with the target URL
      for (let i = 0; i < windowClients.length; i++) {
        const client = windowClients[i];
        // If so, just focus it.
        if (client.url === urlToOpen && 'focus' in client) {
          return client.focus();
        }
      }
      // If not, then open the target URL in a new window/tab.
      if (clients.openWindow) {
        return clients.openWindow(urlToOpen);
      }
    })
  );
});

// Listen for messages from the main app
self.addEventListener('message', (event) => {
  console.log('[firebase-messaging-sw.js] Message received:', event.data);
});

console.log('[firebase-messaging-sw.js] Service Worker loaded');