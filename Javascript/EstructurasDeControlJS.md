# Estructuras de control en Javascript

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

## Estructura switch-case 

~~~
    swich(variable)  {
                  case valor1 : acciones1 ;
                  break ; 
                         .
                         .
                  case valorN : accionesN ;
                  break ; 
                  default :
                  accionDefault ;
                  break;
~~~
Una sentencia switch prueba un valor y puede tener muchas sentencias case que definen varios valores posibles. Las sentencias se ejecutan desde el primer valor case coincidente hasta que se encuentra un break.

Los valores en las sentencias case se prueban con igualdad estricta (===). El break le dice a JavaScript que deje de ejecutar declaraciones. Si se omite break, se ejecutara la siguiente sentencia.

En una declaración switch puede que no seas capaz de especificar todos los valores posibles como declaraciones de case (caso). En su lugar, **se puede añadir la declaración default, la cual se ejecutará si no se encuentran declaraciones case**.Una declaración default debe ser el último caso.

---------------------------------------------

## Bucles while , do-while , for 

### while: 
~~~
while (condicion boolean) {
acciones del bucle 
operador de incremento o decremento (i++ , i--)

}
~~~
### do-while : 

Primero se ejecuta el bloque de codigo y luego se verifica la condicion : 
~~~
do {acciones del bucle} 
        while (condiciones del bucle).
~~~
La instruccion break nos permite salir del bucle : 
por ejemplo   
~~~
if (condicion de corte ) {break }.
~~~

### for :

Los bucles for se declaran con tres expresiones opcionales separadas por punto y coma:

for (a; b; c), donde a es la sentencia de inicialización, b es la sentencia condicional, y c es la expresión final.

La sentencia de inicialización se ejecuta una sola vez antes de que el bucle comience. Normalmente se utiliza para definir y configurar tu variable de bucle.

### Iterar a través de un arreglo con un bucle "for"
Una tarea común en JavaScript es iterar a través del contenido de un arreglo. Una forma de hacerlo es con un bucle for. Este código mostrará cada elemento del arreglo arr en la consola:
~~~
const arr = [10, 9, 8, 7, 6];

for (let i = 0; i < arr.length; i++) {
   console.log(arr[i]);
}
~~~
Recuerda que los arreglos tienen una indexación basada en cero, lo que significa que el último índice del arreglo es igual a su longitud menos uno (length - 1).