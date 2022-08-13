# Hoisting en JS 

<a href='https://www.youtube.com/watch?v=8QWwSLNlSJI&list=PLeYjfE1o93s8xVjPoJBqlIm31ljgopXVo&index=2'>https://www.youtube.com/watch?v=8QWwSLNlSJI&list=PLeYjfE1o93s8xVjPoJBqlIm31ljgopXVo&index=2</a>

<a href='https://developer.mozilla.org/es/docs/Glossary/Hoisting'>https://developer.mozilla.org/es/docs/Glossary/Hoisting</a>

Conceptualmente, por ejemplo, una estricta definición de hoisting sugiere que las declaraciones de variables y funciones son físicamente movidas al comienzo del código, pero esto no es lo que ocurre en realidad. Lo que sucede es que **las declaraciones de variables y funciones son asignadas en memoria durante la fase de compilación, pero quedan exactamente en dónde las has escrito en el código**.

- Una de las ventajas en JavaScript de colocar (ponerlas en memoria) las declaraciones de funciones antes de ejecutar cualquier otro segmento de código es que permite utilizar una función antes de declararla en el código.

 En el caso de las variables si queremos acceder antes de la declaracion nos dara un valor **undefined**.

 - por ejemplo :
~~~
 var x = 5;

(function () {
    console.log("x:", x); // no obtenemos '5' sino 'undefined'
    var x = 10;
    console.log("x:", x); // 10
}());
~~~


- ¿No hemos obtenido lo esperado?, como la declaración de variables se procesa antes de ejecutar cualquier código, declarar una variable en cualquier parte del código es igual a declararla al inicio del mismo. Lo que ocurre aquí y para que se entienda, es que hipotéticamente **la variable se eleva y pasa a declararse al comienzo de su contexto**, en este caso la función que la contiene.El hoisting tambien es a nivel de funcion .

- El ejemplo anterior se entiende implícitamente como:
~~~
var x = 5;

(function () {
    var x; // Se elevo la declaración
    console.log("x:", x); // undefined
    x = 10;
    console.log("x:", x); // 10
}());
~~~

-  **La elevación afecta la declaración de variables, pero no su inicialización**. El valor será asignado exactamente cuando la sentencia de asignación sea alcanzada.

## Alcance 

- **var** tiene alcance de funcion , un alcance global 
- **let y const** tienen ambito de bloque **{ }** , cuando compila se eleva hasta el principio del bloque **=> {**.

### TDZ zona muerta temporal

-  El término describe el estado donde las variables son inaccesibles. Se encuentran en el scope, pero no han sido declaradas todavía. 

- Para let esta limitado por el principio del ambito de la variable y su inicializacion . 

- Por eso es conveninte mover las declaraciones de variables al principio del bloque en cuestion.

- Las funciones almacenadas en variables sufren el mismo problema deben ser asignadas antes de utilizarse .  









