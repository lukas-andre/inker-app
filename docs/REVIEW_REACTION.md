# Sistema de Reacciones

El sistema de reacciones permite a los usuarios interactuar con las reseñas mediante "likes" y "dislikes". Los usuarios pueden agregar o quitar "likes" y "dislikes", así como cambiar sus reacciones.

## Funciones principales

### `_updateReviewReaction`

Esta función actualiza las reacciones de las reseñas y las reacciones del cliente. Recibe los siguientes argumentos:

- `reviewId`: El ID de la reseña a la que se está reaccionando.
- `customerId`: El ID del cliente que está reaccionando.
- `like`: Un booleano que indica si se está dando un "like" (true) o un "dislike" (false).
- `remove`: Un booleano que indica si se está quitando la reacción (true) o agregándola (false).
- `emit`: Una función para emitir el estado actualizado.
- `switchReaction`: Un booleano opcional que indica si se está cambiando la reacción (true) o no (false). Por defecto, es `false`.

### `_updateReactions`

Esta función actualiza las reacciones en la reseña y en el cliente. Recibe los siguientes argumentos:

- `reviewReactions`: Un mapa que contiene las reacciones de las reseñas.
- `customerReactions`: Un mapa que contiene las reacciones de los clientes.
- `reviewId`: El ID de la reseña a la que se está reaccionando.
- `like`: Un booleano que indica si se está dando un "like" (true) o un "dislike" (false).
- `remove`: Un booleano que indica si se está quitando la reacción (true) o agregándola (false).
- `switchReaction`: Un booleano que indica si se está cambiando la reacción (true) o no (false).
  
La función `_updateReactions` se encarga de actualizar las reacciones de una review en particular. Recibe como parámetros un mapa de reviewReactions que contiene las reacciones de todas las reviews, un mapa de customerReactions que contiene las reacciones del usuario, el reviewId de la review en la que se desea actualizar la reacción, un booleano like que indica si el usuario le da like o dislike a la review, un booleano remove que indica si se quiere remover la reacción del usuario y un booleano switchReaction que indica si se quiere cambiar la reacción de like a dislike o viceversa.

La función primero verifica si el mapa de reviewReactions contiene la review en particular que se desea actualizar. Si es así, se procede a calcular los cambios en las reacciones de la review y del usuario en caso de que este haya reaccionado previamente. Si el usuario no ha reaccionado previamente, se establecen las reacciones correspondientes a su reacción actual. Una vez calculados los cambios, se actualiza el mapa de reviewReactions con la nueva cantidad de likes y dislikes.

Si switchReaction es true, entonces se intercambian las reacciones de like a dislike o viceversa. En caso contrario, se procede a actualizar las reacciones normales.

### `_updateCustomerReaction`

Esta función actualiza las reacciones del cliente. Recibe los siguientes argumentos:

- `customerReactions`: Un mapa que contiene las reacciones de los clientes.
- `reviewId`: El ID de la reseña a la que se está reaccionando.
- `like`: Un booleano que indica si se está dando un "like" (true) o un "dislike" (false).
- `remove`: Un booleano que indica si se está quitando la reacción (true) o agregándola (false).
- `switchReaction`: Un booleano opcional que indica si se está cambiando la reacción (true) o no (false). Por defecto, es `false`.

La función `_updateCustomerReaction` se encarga de actualizar las reacciones del usuario en particular. Recibe como parámetros un mapa de customerReactions que contiene las reacciones del usuario, el reviewId de la review en la que se desea actualizar la reacción, un booleano like que indica si el usuario le da like o dislike a la review, un booleano remove que indica si se quiere remover la reacción del usuario y un booleano switchReaction que indica si se quiere cambiar la reacción de like a dislike o viceversa.

La función primero verifica si el mapa de customerReactions contiene la review en particular que se desea actualizar. Si es así, se procede a actualizar las reacciones correspondientes a su reacción actual. Si switchReaction es true, entonces se intercambian las reacciones de like a dislike o viceversa. En caso contrario, se establecen las reacciones correspondientes a su reacción actual.

Si el usuario no ha reaccionado previamente en la review en particular, se establecen las reacciones correspondientes a su reacción actual.

## Comportamiento

- Si un usuario da "like" o "dislike" a una reseña, se agregará su reacción.
- Si un usuario da "like" o "dislike" a una reseña en la que ya había reaccionado de la misma forma, se eliminará su reacción.
- Si un usuario da "like" a una reseña en la que había dado "dislike" previamente (o viceversa), se cambiará su reacción.
