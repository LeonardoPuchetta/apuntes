## Funciones

<a href='https://lenguajejs.com/javascript/fundamentos/funciones/'>https://lenguajejs.com/javascript/fundamentos/funciones/</a>

### Definicion de funciones 

#### **Funciones por declaración**:
Hay varias formas de crear funciones en Javascript: por declaración (la más usada por principiantes), **por expresión** (la más habitual en programadores con experiencia) o mediante constructor de objeto (no recomendada):

Probablemente, la forma más popular de estas tres, y a la que estaremos acostumbrados si venimos de otros lenguajes de programación, es la primera, a la creación de funciones por declaración. Esta forma permite declarar una función que existirá a lo largo de todo el código:
~~~
function saludar() {
  return "Hola";
}

saludar(); // 'Hola'
typeof saludar; // 'function'
~~~

#### **Funciones por expresión**:
Sin embargo, en Javascript es muy habitual encontrarse códigos donde los programadores «guardan funciones» dentro de variables, para posteriormente «ejecutar dichas variables». Se trata de un enfoque diferente, creación de funciones por expresión, que fundamentalmente, hacen lo mismo con algunas diferencias:
~~~
// El segundo "saludar" (nombre de la función) se suele omitir: es redundante
const saludo = function saludar() {
  return "Hola";
};

saludo(); // 'Hola'
~~~

Con este nuevo enfoque, estamos creando una función en el interior de una variable, lo que nos permitirá posteriormente ejecutar la variable (como si fuera una función). Observa que el nombre de la función (en este ejemplo: saludar) pasa a ser inútil, ya que si intentamos ejecutar saludar() nos dirá que no existe y si intentamos ejecutar saludo() funciona correctamente.

¿Qué ha pasado? Ahora el nombre de la función pasa a ser el nombre de la variable, mientras que el nombre de la función desaparece y se omite, dando paso a lo que se llaman las funciones anónimas (o funciones lambda).
De hecho, podríamos ejecutar la función saludar() incluso antes de haberla creado y funcionaría correctamente, ya que Javascript primero busca las declaraciones de funciones y luego procesa el resto del código.

### **Funciones anónimas** 
Las funciones anónimas o funciones lambda son un tipo de funciones que se declaran sin nombre de función y se alojan en el interior de una variable y haciendo referencia a ella cada vez que queramos utilizarla:
~~~
// Función anónima "saludo"
const saludo = function () {
  return "Hola";
};

saludo; // ƒ () { return 'Hola'; }
saludo(); // 'Hola'
~~~

Observa que en la última línea del ejemplo anterior, estamos ejecutando la variable, es decir, ejecutando la función que contiene la variable. Sin embargo, en la línea anterior hacemos referencia a la variable (sin ejecutarla, no hay paréntesis) y nos devuelve la función en sí.

**La diferencia fundamental entre las funciones por declaración y las funciones por expresión es que estas últimas sólo están disponibles a partir de la inicialización de la variable**. Si «ejecutamos la variable» antes de declararla, nos dará un error.

**En el caso de las funciones por declaracion estas pueden ejecutarse incluso antes de ser declaradas porque JS eleva la declaracion de variables y funciones.**

### **Callbacks** 
Ahora que conocemos las funciones anónimas, podremos comprender más fácilmente como utilizar callbacks (también llamadas funciones callback o retrollamadas). A grandes rasgos, un callback (llamada hacia atrás) **es pasar una función B por parámetro a una función A, de modo que la función A puede ejecutar esa función B de forma genérica desde su código, y nosotros podemos definirlas desde fuera de dicha función**:

~~~
// fB = Función B
const fB = function () {
  console.log("Función B ejecutada.");
};

// fA = Función A
const fA = function (callback) {
  callback();
};

fA(fB);
~~~
Esto nos podría permitir crear varias funciones para utilizar a modo de callback y reutilizarlas posteriormente con diferentes propósitos. De hecho, los callbacks muchas veces son la primera estrategia que se suele utilizar en Javascript para trabajar la asincronía, uno de los temas que veremos más adelante:
~~~
// fB = Función B (callback)
const fB = function () {
  console.log("Función B ejecutada.");
};

// fError = Función Error (callback)
const fError = function () {
  console.error("Error");
};

// fA = Función A
const fA = function (callback, callbackError) {
  const n = ~~(Math.random() * 5);
  if (n > 2) callback();
  else callbackError();
};

fA(fB, fError); // Si ejecutamos varias veces, algunas darán error y otras no
~~~
Viendo este ejemplo, podemos planear ejecutar la función fA() cambiando los callbacks según nos interese, sin necesidad de crear funciones con el mismo código repetido una y otra vez. Además, en el caso de que las funciones callbacks sean muy cortas, muchas veces utilizamos directamente la función anónima, sin necesidad de guardarla en una variable previamente:
~~~
// fA = Función A
const fA = function (callback, callbackError) {
  const n = ~~(Math.random() * 5);
  if (n > 2) callback();
  else callbackError();
};

fA(
  function () {
    console.log("Función B ejecutada.");
  },
  function () {
    console.error("Error");
  }
);
~~~
Aunque, como se puede ver, se suele evitar para facilitar la legibilidad del código, y sólo se utiliza en casos muy específicos donde estás seguro que no vas a reutilizar la función callback o no te interesa guardarla en una variable.

### **Funciones autoejecutables** (tambien son anonimas) 
Pueden existir casos en los que necesites crear una función y ejecutarla sobre la marcha. En Javascript es muy sencillo crear funciones autoejecutables. Básicamente, sólo tenemos que envolver entre paréntesis la función anónima en cuestión (no necesitamos que tenga nombre, puesto que no la vamos a guardar) y luego, ejecutarla:
~~~
// Función autoejecutable
(function () {
  console.log("Hola!!");
})();

// Función autoejecutable con parámetros
(function (name) {
  console.log(`¡Hola, ${name}!`);
})("Manz");
~~~
De hecho, también podemos utilizar parámetros en dichas funciones autoejecutables. Observa que sólo hay que pasar dichos parámetros al final de la función autoejecutable.

Ten en cuenta, que si la función autoejecutable devuelve algún valor con return, a diferencia de las funciones por expresión, en este caso lo que se almacena en la variable es el valor que devuelve la función autoejecutada:
~~~
const f = (function (name) {
  return `¡Hola, ${name}!`;
})("Manz");

f; // '¡Hola, Manz!`
typeof f; // 'string'
~~~

### **Arrow functions** 
Las Arrow functions, funciones flecha o «fat arrow» son una forma corta de escribir funciones que aparece en Javascript a partir de ECMAScript 6. Básicamente, se trata de reemplazar eliminar la palabra function y añadir => antes de abrir las llaves:
~~~
const func = function () {
  return "Función tradicional.";
};

const func = () => {
  return "Función flecha.";
};
~~~
Sin embargo, las funciones flechas tienen algunas ventajas a la hora de simplificar código bastante interesantes:

- Si el cuerpo de la función sólo tiene una línea, podemos omitir las llaves ({}).
Además, en ese caso, automáticamente se hace un return de esa única línea, por lo que podemos omitir también el return.
- En el caso de que la función no tenga parámetros, se indica como en el ejemplo anterior: () =>.
- En el caso de que la función tenga un solo parámetro, se puede indicar simplemente el nombre del mismo: e =>.
- En el caso de que la función tenga 2 ó más parámetros, se indican entre paréntesis: (a, b) =>.
- Si queremos devolver un objeto, que coincide con la sintaxis de las llaves, se puede englobar con paréntesis: ({name: 'Manz'}).

Por lo tanto, el ejemplo anterior se puede simplificar aún más:
~~~
const func = () => "Función flecha."; // 0 parámetros: Devuelve "Función flecha"
const func = (e) => e + 1; // 1 parámetro: Devuelve el valor de e + 1
const func = (a, b) => a + b; // 2 parámetros: Devuelve el valor de a + b
~~~
Las funciones flecha hacen que el código sea mucho más legible y claro de escribir, mejorando la productividad y la claridad a la hora de escribir código.

### **Ámbito léxico de this** 
Aunque aún no la hemos utilizado, **una de las principales diferencias de las funciones flecha respecto a las funciones tradicionales, es el valor de la palabra clave this, que no siempre es la misma**.

Por ejemplo, si utilizamos una función de forma global en nuestro programa, no notaremos ninguna diferencia:
~~~
// Si son funciones globales
const a = function () {
  console.log(this);
};
const b = () => {
  console.log(this);
};

a(); // Window
b(); // Window
~~~
Sin embargo, si utilizamos una función en el interior de un objeto, como suele ser el caso más habitual, si encontraremos diferencias. Observa que en la primera función, donde se utiliza una función tradicional, el this devuelve el objeto padre de la función.

Por otro lado, en la segunda función, donde se utiliza una función flecha, el this no devuelve el objeto padre de la función, sino que devuelve Window.
~~~
padre = {
  a: function () {
    console.log(this);
  },
  b: () => {
    console.log(this);
  },
};

padre.a(); // padre
padre.b(); // Window
~~~
**Esta es una diferencia clave que hay que tener bien en cuenta a la hora de trabajar con las funciones flecha. Una buena práctica es utilizar funciones tradicionales como las funciones de primer nivel y, luego, en su interior o en callbacks, utilizar funciones flecha.**


### Devolver un valor de una función utilizando "Return"
Podemos pasar valores a una función con argumentos. Puedes utilizar una declaración de devolución (**return**) para enviar un valor fuera de una función.

~~~
function plusThree(num) {
  return num + 3;
}

const answer = plusThree(5);
~~~
answer tiene el valor 8.

### Ámbito global y funciones
- En JavaScript, el ámbito se refiere a la visibilidad de las variables. Las variables definidas fuera de un bloque de función tienen un ámbito Global. Esto significa que pueden ser observadas desde cualquier lugar en tu código JavaScript.

- Las variables que se declaran sin las palabras clave let o const se crean automáticamente en el ámbito global. Esto puede crear consecuencias no intencionadas en cualquier lugar de tu código o al volver a ejecutar una función. Siempre debes declarar tus variables con let o const.

- **Las variables que se declaran dentro de una función, así como los parámetros de la función tienen un ámbito local. Esto significa que sólo son visibles dentro de esa función**.

- Es posible tener variables locales y globales con el mismo nombre. Cuando haces esto, la variable local tiene precedencia sobre la variable global.
~~~
const someVar = "Hat";

function myFun() {
  const someVar = "Head";
  return someVar;
}
~~~

La función myFun devolverá la cadena Head porque está presente la versión local de la variable.

### Valor indefinido devuelto por una función
Una función puede incluir la declaración de devolución (return) pero no tiene por qué hacerlo. **En el caso de que la función no tenga una declaración de devolución (return), cuando la llames, la función procesa el código interno, pero el valor devuelto es undefined (indefinido)**.
~~~
let sum = 0;

function addSum(num) {
  sum = sum + num;
}

addSum(3);
~~~
addSum es una función sin una declaración de devolución (return). La función cambiará la variable global sum pero el valor devuelto de la función es **undefined**.

### Devolver valores booleanos desde funciones
Puesto que === devuelve true o false, podemos devolver el resultado de la comparación:
~~~
function isEqual(a, b) {
  return a === b;
}
~~~
### Patrón de devolución anticipado para funciones
Cuando se alcanza una sentencia **return**, la ejecución de la función actual se detiene y el control se devuelve a la ubicación de la llamada.


