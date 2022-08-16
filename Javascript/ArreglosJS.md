# Arreglos 

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
