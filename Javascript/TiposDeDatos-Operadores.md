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

  ### **const** :

  const tiene todas las características increíbles que tiene let, con el bono añadido de que las variables declaradas usando const son de solo lectura. **Son un valor constante, lo que significa que una vez que una variable es asignada con const, no se puede reasignar.**

------------------------------------
### **(Tipos de Datos)**

 JavaScript proporciona ocho tipos de datos diferentes, los cuales son **undefined, null, boolean, string, symbol, bigint, number, y object** (que paso con float (decimales)?).

 ### Transformando tipos de datos :

 Tenemos funciones que convierten entre tipos de datos , por ejemplo :

- Number (de caracter a numero) 

- **parseInt** (de caracter a numero entero ) .
La función parseInt() analiza una cadena y devuelve un entero. Recibe un segundo argumento para la **base (radix)**, que especifica la base del número representado en la cadena. La base (radix) puede ser un número entero entre 2 y 36.
~~~
parseInt(string, radix);
~~~
Y aquí hay un ejemplo:
~~~
const a = parseInt("11", 2);
~~~~
La variable radix indica que 11 está en el sistema binario, o base 2. Este ejemplo convierte la cadena 11 a un entero 3.

- parseFloat (de entero a decimal )

- String (de cualquier variable a un string).

- El operador Typeof(argumento) nos devuelve los tipos de datos de las variables argumento.



 -----------------------------------------
## Operadores :

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

###  Operador condicional (ternario)
El operador condicional, también llamado el operador ternario, puede utilizarse como una expresión if-else de una sola línea.

La sintaxis es a ? b : c, donde a es la condición, b es el código a ejecutar cuando la condición devuelve true, y c es el código a ejecutar cuando la condición devuelve false.

La siguiente función utiliza una sentencia if/else para comprobar una condición:
~~~
function findGreater(a, b) {
  if(a > b) {
    return "a is greater";
  }
  else {
    return "b is greater or equal";
  }
}
~~~
Esto puede reescribirse usando el operador condicional:
~~~
function findGreater(a, b) {
  return a > b ? "a is greater" : "b is greater or equal";
}
~~~
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





----------------------------------------------




