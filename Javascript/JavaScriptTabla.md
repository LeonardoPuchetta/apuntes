# Javascript (Tabla)



|Codigo|--------|Funcionalidad|
| ------------- | ------------- |------|
| **'use strict'** | -------------|En este modo la programacion requerira de formas mas formales o estrictas , ademas activa funcionalidades nuevas .|
| **Declaracion de variables** |  ||
| **var** | ------------- |var define una variable global o local|
| **let** | ------------- |let permite definir variables al bloque o expresion donde se utilizara|
| **const** | ------------- |las variables declaradas usando const son de solo lectura. **Son un valor constante, lo que significa que una vez que una variable es asignada con const, no se puede reasignar.**. Si podremos cambiar su contenido  si es un **array** o un **object** (son mutables pero no redefinibles)|
| ------------- | ------------- |------|
| **Tipos de datos** |  |ocho tipos de datos diferentes, los cuales son **undefined, null, boolean, string, symbol, bigint, number, y object**|
| **Conversion entre tipos de datos**| ||
| **Number** | ------------- |de caracter a numero|
| **parseInt** | Recibe un segundo argumento para la base (radix), que especifica la base del número representado en la cadena. La base (radix) puede ser un número entero entre 2 y 36. |de caracter a numero entero  **parseInt(string, radix);**|
| **parseFloat** | ------------- |de entero a decimal|
| **String** | ------------- |de cualquier variable a un string|
| **Typeof(argumento)**  | ------------- |nos devuelve los tipos de datos de las variables argumento|
| ------------- | ------------- |------|
| **Operadores** | ------------- |------|
| **++** | ------------- |**i++**   equivalente a **i = i + 1**;|
| **resto %**  | ------------- |entrega el resto de la división entre dos números.|
| **+=**  | ------------- |realiza una asignacion compuesta con la adicion|
| ***=**  | ------------- | multiplica una variable por un número|
| /=  | ------------- |divide una variable entre otro número.|
| **condicional (ternario)** | function findGreater(a, b) { return a > b ? "a is greater" : "b is greater or equal";} |La sintaxis es **a ? b : c** , donde a es la condición, b es el código a ejecutar cuando la condición devuelve true, y c es el código a ejecutar cuando la condición devuelve false|
| **Strings** | ------------- |------|
| **.split()** | divide un string en dos o más sub cadenas usando un separador (divisor). El separador puede ser un solo carácter, otra cadena, o una expresión regular.|let arr = mensaje.split(' '); si lo usamos sin argumento devuelve **un array cuyos elementos son los caracteres de la cadena**|
| **.replace()** ; **replaceAll()** |  devuelve una nueva cadena con algunas o todas las coincidencias de un patrón, siendo cada una de estas coincidencias reemplazadas por remplazo. El patrón puede ser una cadena o una RegExp, y el reemplazo puede ser una cadena o una función que será llamada para cada coincidencia. Si el patrón es una cadena, sólo la primera coincidencia será reemplazada.La cadena original permanecerá inalterada. |------|
| **trim( )** | elimina los espacios en blanco en ambos extremos del string. Los espacios en blanco en este contexto, son todos los caracteres sin contenido |str.trim()|
| **slice( )** |extrae una sección de una cadena y devuelve una cadena nueva.|cadena.slice(inicioTrozo[, finTrozo])|
| **destructuring de un String** | devuelve un array con cada caracter del string |**[. . . stringName] =['H', 'e', 'l', 'l', 'o', ' ', 'w', 'o', 'r', 'l', 'd']**|
| **charAt( )** |  devuelve en un nuevo String el carácter UTF-16 de una cadena. |str.charAt(indice)|
| **substr( )** |devuelve los caracteres de una cadena que comienzan en una localización especificada y de acuerdo al número de caracteres que se especifiquen. |cadena.substr(inicio[, longitud])|
| **substring( )** |  devuelve un subconjunto de un objeto String.|cadena.substring(indiceA[, indiceB'])|
| ------------- | ------------- |------|
| ------------- | ------------- |------|
| ------------- | ------------- |------|
| ------------- | ------------- |------|
| ------------- | ------------- |------|
| **Arreglos**| ------------- |------|
| Definicion de arreglos | corchetes |var nombres = ["Loco" , "Malo" , "Feo" , "Uruguay" , "Esparta",562,95 ];|
| ------------- | palabras new y array |var lenguajes = new Array ("php","js","Java","Phyton"); |
| **.push()** | toma uno o más parámetros y los "empuja" al final del arreglo|  lenguajes.push(4); |
| **.pop()**  | elimina el último elemento de un arreglo y devuelve ese elemento|let lengua = lenguajes.pop()|
| **.shift()** | igual que .pop(), excepto que elimina el primer elemento en lugar del último |------|
| **.unshift()** | funciona exactamente como .push(), pero en lugar de añadir el elemento al final del arreglo, unshift() añade el elemento al principio del arreglo  |------|
| **.slice()** | devuelve una copia de una parte del array dentro de un nuevo array empezando por inicio hasta fin (fin no incluido).|arr.slice([inicio [, fin]])|
| **.splice()**  | cambia el contenido de un array eliminando elementos existentes y/o agregando nuevos elementos. |array.splice(start[, deleteCount[, item1[, item2[, ...]]]])|
| **.indexOf(value)** | El método indexOf() retorna el primer índice en el que se puede encontrar un elemento dado en el array, ó retorna -1 si el elemento no esta presente.|array.indexOf(searchElement[, fromIndex])|
| **.sort()** |ordena los elementos de un arreglo localmente y devuelve el arreglo ordenado. La ordenación no es necesariamente estable. El modo de ordenación por defecto responde a la posición del valor del string de acuerdo a su valor Unicode. |arr.sort([compareFunction])|
| **.join(caracter)**| une todos los elementos de una matriz (o un objeto similar a una matriz) en una cadena y devuelve esta cadena.Sumandole **caracter** |**para convertir arrays en cadenas**|
| **reverse( )** |  invierte el orden de los elementos de un array in place. El primer elemento pasa a ser el último y el último pasa a ser el primero. |**modifica la referencia al array**|
| ------------- | ------------- |------|
| ------------- | ------------- |------|
|  **array.forEach( (element,index) => {f} )** | ------------- |recorrida de array element a element aplicando funcion|
| **array.map( (element,index) => {f} )** | ------------- |recorrida de array element a element aplicando funcion ,a diferencia de forEach devuelve una lista resultante que podemos guardar en otro array|
| **array.filter(element => {condicion})**  | ------------- |filtrado de array segun condicion|
| ------------- | ------------- |------|
| ------------- | ------------- |------|
| ------------- | ------------- |------|
| **Objetos** | Los objetos son similares a los arreglos (arrays), excepto que en lugar de usar índices para acceder y modificar sus datos, accedes a los datos en objetos a través de propiedades (properties).  |------|
| ------------- | ------------- |------|
| ------------- | ------------- |------|
| ------------- | ------------- |------|
| **Funciones/metodos particulares** | ------------- |------|
| **setInterval()** |  llama a una función o ejecuta un fragmento de código de forma reiterada, con un retardo de tiempo fijo entre cada llamada. | **setInterval(func, delay, arg0, arg1, / ..., / argN)** |
| **setTimeout()**|  permite ejecutar un fragmento de código, una vez transcurrido un tiempo determinado. |**setTimeout(function, millisegundos, parametro, parametro, ...)**|
| ------------- | ------------- |------|
| ------------- | ------------- |------|
| ------------- | ------------- |------|
| ------------- | ------------- |------|
| ------------- | ------------- |------|
| ------------- | ------------- |------|
| ------------- | ------------- |------|
| ------------- | ------------- |------|

## Generacion de numeros aleatorios 

Genera fracciones aleatorias con JavaScript
Los números aleatorios son útiles para crear comportamientos aleatorios.

- JavaScript tiene una función **Math.random()** que genera un número decimal aleatorio entre 0 (inclusivo) y 1 (exclusivo). Así que Math.random() puede devolver un 0 pero nunca devuelve un 1.

 - **Math.floor()** para redondear el número hacia abajo a su número entero más cercano.

### Números enteros aleatorios dentro de un rango
En lugar de generar un número entero aleatorio entre cero y un número dado como lo hicimos anteriormente, podemos generar un número entero aleatorio que se encuentre dentro de un rango de dos números específicos.

Para ello, definiremos un número mínimo min y un número máximo max.
~~~
Math.floor(Math.random() * (max - min + 1)) + min
~~~














