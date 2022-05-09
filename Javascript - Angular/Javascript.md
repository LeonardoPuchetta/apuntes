# Javascript (basic javascript de freecodecamp y apuntes )

### Creacion de un script 


Los script se ponen en el head normalmente , en la parte de los metadatos . 
Para crear un script : 

~~~
<script type="text/javascript">

codigo  en javascript

</script>
~~~
**type="text/javascript"** fuerza al navegador a entender que es codigo JS .

Podemos tambien hacer referencia a un script en un archivo externo :
~~~
<script type="text/javascript" src =”Hola-mundo.js”><script/>
~~~

## Modo estricto en JS  


Se activa poniendo en la primer linea del script :  **'use strict'** .
En este modo la programacion requerira de formas mas formales o estrictas , ademas activa funcionalidades nuevas .  

## Variables y tipos de datos :

### **(Variables) Uso de let , var y const** : 


Se pueden definir variables tambien mediante la palabra let .

La palabra **let permite definir variables al bloque o expresion donde se utilizara** mientras que **var define una variable global o local** . Let actua a nivel de bloque .

Uno de los mayores problemas con la declaración de variables utilizando la palabra clave **var** es que tú puedes fácilmente **sobrescribir declaraciones de variables**.

 A diferencia de var, **al usar let, una variable con el mismo nombre solo puede declararse una vez**.

Cuando las variables de JavaScript son declaradas, tienen un **valor inicial de undefined** (indefinido).

 Si haces una operación matemática en una variable undefined, tu resultado será **NaN lo que significa "Not a Number" (no es un número)**.
 
  Si concatenas una cadena con una variable undefined, obtendrás una cadena de undefined.

  ### const :

  const tiene todas las características increíbles que tiene let, con el bono añadido de que las variables declaradas usando const son de solo lectura. **Son un valor constante, lo que significa que una vez que una variable es asignada con const, no se puede reasignar.**

------------------------------------
### **(Tipos de Datos)**

 JavaScript proporciona ocho tipos de datos diferentes, los cuales son **undefined, null, boolean, string, symbol, bigint, number, y object** (que paso con float (decimales)?).


 -----------------------------------------
### Operadores :

- Puedes fácilmente incrementar o sumar uno a una variable con el **operador ++**(o -- para decrementar).
~~~
i++;

es equivalente a

i = i + 1;
~~~

- El operador de **resto %** entrega el resto de la división entre dos números.

En matemáticas, un número se puede comprobar para saber si es par o impar revisando el resto de la división del número por 2.
~~~
17 % 2 = 1 (17 es impar)

48 % 2 = 0 (48 es par)
~~~

- El **operador +=** realiza una asignacion compuesta con la adicion , para realizar una sustraccion usamos **-=** .

~~~
let myVar = 1;
myVar += 5;
console.log(myVar);
~~~

Se mostrará un 6 en la consola.

- El operador *= multiplica una variable por un número mientras que el opreador /= divide una variable entre otro número.

### Escapa comillas literales en cadenas

Cuando estás definiendo una cadena debes comenzar y terminar con una comilla simple o doble. ¿Qué pasa cuando necesitas una comilla literal: " o ' dentro de tu cadena?

En JavaScript, puedes escapar una comilla de considerarse un final de cadena colocando una barra invertida (\ )  delante de la comilla.

~~~
const sampleStr = "Alan said, \"Peter is learning JavaScript\".";
~~~

### Escapar secuencias en cadenas

Las comillas no son los únicos caracteres que pueden ser escapados dentro de una cadena. Hay dos razones para usar caracteres de escape:

- Para permitir el uso de caracteres que de otra manera no te sería posible escribir, como un retorno de carro.

- Para permitirte representar múltiples comillas en una cadena sin que JavaScript malinterprete lo que quieres decir.
Esto lo aprendimos en el desafío anterior.


|Código|Resultado|
| ------------- | ------------- |
| \\'|	comilla simple|
|\\"	|comilla doble|
|\\\	|barra invertida|
|\n|	línea nueva|
|\r|	retorno de carro|
|\t	|tabulación|
|\b|	límite de palabra|
|\f	|fuente de formulario|

### Concatenar cadenas con el operador "más"

En JavaScript, cuando el operador + se utiliza con un valor de cadena (String), se le llama operador de concatenación. Puedes construir una nueva cadena a partir de otras cadenas concatenándolas juntas.

Ejemplo
~~~
'My name is Alan,' + ' I concatenate.'
~~~
También podemos utilizar el operador += para concatenar una cadena al final de una variable de cadena existente.
~~~
let ourStr = "I come first. ";
ourStr += "I come second.";
~~~
ourStr ahora tiene un valor de la cadena **I come first. I come second.**.

### Construir  cadenas con variables
A veces necesitarás construir una cadena, al estilo Mad Libs. Al usar el **operador de concatenación (+)**, puedes insertar una o más variables en una cadena que estés construyendo.

Ejemplo:
~~~
const ourName = "freeCodeCamp";
const ourStr = "Hello, our name is " + ourName + ", how are you?";
~~~
ourStr tendrá como valor la cadena **Hello, our name is freeCodeCamp, how are you?**.

### Encuentra la longitud de una cadena
Puedes encontrar la longitud de un valor de cadena (String) escribiendo **.length** después de la variable de cadena o literal de cadena.
~~~
console.log("Alan Peter".length);
~~~
El valor 10 se mostrará en la consola. Toma nota que el carácter espacial entre "Alan" y "Peter" también se cuenta.

### Notación de corchetes 
La notación de corchetes es una forma de obtener un carácter en un índice (index) específico dentro de una cadena.

Ejemplo:
~~~
const firstName = "Charles";
const firstLetter = firstName[0];
~~~
firstLetter tendrá una cadena con valor C.

### Inmutabilidad de las cadenas
En JavaScript, los valores de cadena (String) son inmutables, lo que significa que no pueden ser alterados una vez creados.

Por ejemplo, el siguiente código:
~~~
let myStr = "Bob";
myStr[0] = "J";
~~~

no puede cambiar el valor de myStr a Job, porque el contenido de myStr no puede ser alterado. Ten en cuenta que esto no significa que myStr no puede cambiarse, solo que **los caracteres individuales de una cadena literal no pueden ser cambiados**.


## Arreglos 

### Definicion de arreglos :

- definido con corchetes
~~~
var nombres = ["Loco" , "Malo" , "Feo" , "Uruguay" , "Esparta",562,95 ];
~~~
 - definicion con palabras new y array
 ~~~
var lenguajes = new Array ("php","js","Java","Phyton"); 
~~~

### Recorrida de un array completo con **for**

 - Utilizamos un ciclo **for** : 

~~~
for (let i=0 ; i< lenguajes.length; i++){

document.write("<li>"+ lenguajes[i] + "</li>");
}
~~~
### Recorriendo arrays con **forEach** 

 forEach itera todo el array , ejecuta la función indicada una vez por cada elemento del array.



~~~
lenguajes.forEach((elemento, indice)=> {-

    document.write("<li>"+ indice + "- " + elemento + "</li>");

});
~~~
forEach recibe como parametro una funcion de callback
### Modificar los datos de un arreglo con índices
A diferencia de las cadenas, las entradas de los arreglos son mutables y pueden cambiarse libremente, **incluso si el arreglo fue declarado con const**.

### Acceder a arreglos multidimensionales con índices

Se puede pensar que un arreglo multidimensional es como un arreglo de arreglos. Cuando usas corchetes para acceder a tu arreglo, el primer par de corchetes se refiere a las entradas en el arreglo externo (el primer nivel) y cada par adicional de corchetes se refiere al siguiente nivel de entradas.
~~~
const arr = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
  [[10, 11, 12], 13, 14]
];

arr[3];
arr[3][0];
arr[3][0][1];
~~~
arr[3] es [[10, 11, 12], 13, 14], arr[3][0] es [10, 11, 12] y arr[3][0][1] es 11.

### Manipular arreglos con **push( )**

Una forma fácil de añadir datos al final de un arreglo es a través de la función push().

**.push()** toma uno o más parámetros y los "empuja" al final del arreglo.
~~~
const arr1 = [1, 2, 3];
arr1.push(4);

const arr2 = ["Stimpson", "J", "cat"];
arr2.push(["happy", "joy"]);
~~~

arr1 ahora tiene el valor [1, 2, 3, 4] y arr2 tiene el valor ["Stimpson", "J", "cat", ["happy", "joy"]].


### Manipular arreglos con **pop( )**

Otra manera de cambiar los datos en un arreglo es con la función **.pop()**.

.pop() se utiliza para sacar un valor del final de un arreglo. Podemos almacenar este valor sacado asignándolo a una variable.

 En otras palabras, **.pop() elimina el último elemento de un arreglo y devuelve ese elemento**.

Cualquier tipo de entrada puede ser sacada de un arreglo: números, cadenas, incluso arreglos anidados.

### Manipular arreglos con **shift( )**

 Funciona igual que .pop(), excepto que elimina el primer elemento en lugar del último.

 ### Manipula arreglos con **unshift()**
No solo puedes desplazar (shift) elementos del comienzo de un arreglo, también puedes des-desplazar (unshift) elementos al comienzo de un arreglo. Por ejemplo añadir elementos delante del arreglo.

**.unshift() funciona exactamente como .push(), pero en lugar de añadir el elemento al final del arreglo, unshift() añade el elemento al principio del arreglo**.


## Funciones

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

## Estructuras de control 

## Estructura if : 
~~~
if (boolean) {
    acciones 1 
    } else { 
        acciones 2 
        } ; 
~~~
se pueden combinar condiciones mediante operadores logicos :

**AND : &&  , OR : || , NOT : !**

### Comparación con el operador de igualdad
Hay muchos operadores de comparación en JavaScript. Todos estos operadores devuelven un valor booleano true o false.

El operador más básico es el de igualdad **==**. El operador de igualdad compara dos valores y devuelve true si son equivalentes o false si no lo son. 

Ten en cuenta que una igualdad es diferente a una asignación (=), la cual asigna el valor a la derecha del operador a la variable de la izquierda.
~~~
function equalityTest(myVal) {
  if (myVal == 10) {
    return "Equal";
  }
  return "Not Equal";
}
~~~

Si myVal es igual a 10, el operador de igualdad devuelve true, así que el código dentro de los corchetes se ejecutará y la función devolverá Equal. De lo contrario, la función devolverá Not Equal.

**Para que JavaScript compare dos tipos de datos diferentes (por ejemplo, numbers y strings), tiene que convertir un tipo a otro. Esto se conoce como coerción de Tipo.**

Tenemos funciones que convierten entre tipos de datos , por ejemplo :

 - Number (de caracter a numero) 

 - parseInt (de caracter a numero entero )

- parseFloat (de entero a decimal )

- String (de cualquier variable a un string).

- El operador Typeof ( argumento ) nos devuelve los tipos de datos de las variables argumento.

### Comparación con el operador de estricta igualdad
La estricta igualdad (===) es la contraparte del operador de igualdad (==). Sin embargo, a diferencia del operador de igualdad, el cual intenta convertir ambos valores comparados a un tipo común, **el operador de estricta igualdad no realiza una conversión de tipo**.

Si los valores que se comparan tienen diferentes tipos, se consideran desiguales, y el operador de estricta igualdad devolverá falso.

### Comparación con el operador de desigualdad
El operador de desigualdad **(!=)** es lo opuesto al operador de igualdad. Esto quiere decir que no es igual, y devuelve false cuando la comparación de igualdad devuelva true y vice versa. **Al igual que el operador de igualdad, el operador de desigualdad convertirá los tipos de datos mientras los compara**.

### Comparación con el operador de estricta desigualdad
El operador de estricta desigualdad !== es el opuesto lógico del operador de estricta igualdad. Esto significa "Estrictamente Desigual", y devuelve false cuando la comparación de estricta igualdad devolvería true y vice versa. El operador de estricta desigualdad no convertirá los tipos de datos.


### Comparación con el operador "mayor que"
El operador mayor que (>) compara los valores de dos números. Si el número a la izquierda es mayor que el número a la derecha, devuelve true. De lo contrario, devuelve false.

Al igual que el operador de igualdad, el operador mayor que convertirá los tipos de datos de valores mientras los compara.

### Comparación con el operador "mayor o igual que"
El operador mayor o igual que (>=) compara el valor de dos números. Si el número de la izquierda es mayor o igual que el número de la derecha, devuelve true. De lo contrario, devuelve false.

Al igual que el operador de igualdad, el operador mayor o igual que convertirá los tipos de datos mientras los compara.













