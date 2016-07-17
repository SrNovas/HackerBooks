¿En qué otros modos podemos trabajar? ¿is, as?

Según he podido leer, isKindOfClass es un método para comprobar la herencia de clase, algo así como comprobar si el objeto que me das desciende de una clase indicada.

En la práctica he usado lo explicado en clase, cast con as? junto con guard, para en caso de bombazo, hacer un throw.


¿Dónde guardarías estos datos?

No he llegado a implementarlo, pero viendo que hay PDF's de hasta 600 hojas, deberían almacenarse en un directorio temporal del Sandbox. Según he podido leer, en el simulador se trabaja sobre un NSTemporaryDirectory().


Favoritos, ¿Cómo harías eso? ¿Se te ocurre más de una forma de hacer? Explica la decisión de diseño que hayas tomado.

Aunque no lo tengo implementado, se podría crear una funcionalidad en la que al presionar el botón de "favorito", automáticamente le asignase un tag interno "favourites", de tal manera que en la lista principal estos no serían visibles (los podría filtrar), pero sí lo serían en la ventana favoritos.

Con ello podríamos tirar de todo lo implementado quizá solo teniendo que añadir una función que realice el trabajo de filtrado, por lo demás (a simple vista), todo seguiría igual.


¿Qué funcionalidades le añadirías antes de subirla a la App Store?

Podríamos añadirle una funcionalidad de sugerencias, es decir, una vez tengo mis libros favoritos, podríamos hacer una búsqueda de los tags y autores de los mismos y mostrale al usuario libros de temáticas y autores relacionados.


Usando esta App como "plantilla", ¿qué otras versiones se te ocurren? ¿Algo que puedas monetizar?

Algo bastante útil podría ser una especie de metabuscardor del tipo kayak, introduces el título de un libro (o ISBN) y te muestra los precios del mismo en las librerías mas cercanas a tu ubicación (tiraríamos de ubicación GPS). Con ello el usuario se ahorarría unos eurillos (durante el curso académico nos haríamos de oro).


Comentarios
Tras una segunda oportuninidad, me incorporé al BOOT 3 prácticamente a una semana de la entrega de la práctica, así que en esos días he visto los 12 vídeos y asimilados conceptos (no todos los que debería). Sin duda alguna, la práctica no refleja de ninguna de las maneras el tiempo que le he dedicado durante esta semana.