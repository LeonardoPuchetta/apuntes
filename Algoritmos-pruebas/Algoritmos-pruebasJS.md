# Problemas clasicos y conceptos basicos  :

## **Bucles while , do-while , for** 

### **while**: 
~~~
while (condicion boolean) {
acciones del bucle 
operador de incremento o decremento (i++ , i--)

}
~~~
### **do-while** : 

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
### Ejercicio busqueda de perfiles :

<a href = 'https://www.freecodecamp.org/espanol/learn/javascript-algorithms-and-data-structures/basic-javascript/profile-lookup'>Link De freeCodeCamp</a>
~~~
const contacts = [
  {
    firstName: "Akira",
    lastName: "Laine",
    number: "0543236543",
    likes: ["Pizza", "Coding", "Brownie Points"],
  },
  {
    firstName: "Harry",
    lastName: "Potter",
    number: "0994372684",
    likes: ["Hogwarts", "Magic", "Hagrid"],
  },
  {
    firstName: "Sherlock",
    lastName: "Holmes",
    number: "0487345643",
    likes: ["Intriguing Cases", "Violin"],
  },
  {
    firstName: "Kristian",
    lastName: "Vos",
    number: "unknown",
    likes: ["JavaScript", "Gaming", "Foxes"],
  },
];

function lookUpProfile(name, prop) {
  // Cambia solo el código debajo de esta línea
  let i = 0 ;
  let terminado = false;
  do {
      if (contacts[i].firstName == name){
        let element = contacts[i];
        if (element[prop]!==undefined){
           terminado = true;
           return element[prop]
        } else {
          return "No such property"
        }
        
        
      }
      i++;
      if (i>contacts.length-1){
        return "No such contact"
      }


  } while (!terminado)
  }
console.log(lookUpProfile("Kristian", "likes"));
~~~
### **for** :

Los bucles for se declaran con tres expresiones opcionales separadas por punto y coma:

for (a; b; c), donde a es la sentencia de inicialización, b es la sentencia condicional, y c es la expresión final.

La sentencia de inicialización se ejecuta una sola vez antes de que el bucle comience. Normalmente se utiliza para definir y configurar tu variable de bucle.



## **Recursion** 

La recursión es el concepto que una función puede expresarse en términos de sí misma. Para ayudar a comprender esto, comienza pensando en la siguiente tarea: multiplica los primeros n elementos de un arreglo para crear el producto de esos elementos. Usando un bucle for, puedes hacer esto:
~~~
  function multiply(arr, n) {
    let product = 1;
    for (let i = 0; i < n; i++) {
      product *= arr[i];
    }
    return product;
  }
~~~

Sin embargo, nota que **multiply(arr, n) == multiply(arr, n - 1) * arr[n - 1]**. 

Esto significa que puedes reescribir multiply en términos de sí misma y que nunca necesites hacer uso de un bucle.
~~~
  function multiply(arr, n) {
    if (n <= 0) {
      return 1;
    } else {
      return multiply(arr, n - 1) * arr[n - 1];
    }
  }
~~~

La versión recursiva de multiply se desglosa así. En el caso base, donde n <= 0, devuelve 1. Para valores más grandes de n, se llama a sí misma, pero con n - 1. Esa llamada de función se evalúa de la misma manera, llamando a multiply otra vez hasta que n <= 0. En este punto, todas las funciones pueden devolver y la multiply original devuelve la respuesta.

**Nota: Las funciones recursivas deben tener un caso base cuando devuelven sin tener que llamar a la función de nuevo (en este ejemplo, cuando n <= 0), de lo contrario nunca podrán terminar de ejecutarse.**

### **Suma de los primeros n elementos de un arreglo mediante recursion** :

~~~
function sum(arr, n) {
   if (n<=0){
     return 0
   } else {
     return sum(arr,n-1) + arr[n-1]
   }
}
~~~
### **Recursión para crear una cuenta regresiva**
~~~
function countdown(n){
  if (n<1){
    return []
  } else {
      const countArray = countdown(n-1);
      countArray.unshift(n);
      return countArray
  }
  
}
console.log(countdown(4))  
~~~
la llamada a console devuelve [ 4, 3, 2, 1 ]

### **Recursión para crear un rango de números**

~~~
function rangeOfNumbers(startNum, endNum) {
  if (startNum == endNum){
    return [startNum];
  } else {
    const intervalArray = rangeOfNumbers(startNum,endNum -1);
    intervalArray.push(endNum);
    return intervalArray
  }
 
};

console.log(rangeOfNumbers(1,5))
~~~
la llamada a console devuelve [ 1, 2, 3, 4, 5 ]


### **Recorrida de un array completo con for** :

~~~
let lenguajes = new Array ("php","js","Java","Phyton"); 

for (let i=0 ; i< lenguajes.length; i++){

document.write("<li>"+ lenguajes[i] + "</li>");
}
~~~

## **Problemas con arrays**

### **Recorriendo arrays con forEach** 

 forEach itera todo el array , ejecuta la función indicada una vez por cada elemento del array.



~~~
lenguajes.forEach((elemento, indice)=> {-

    document.write("<li>"+ indice + "- " + elemento + "</li>");

});
~~~
forEach recibe como parametro una funcion de callback







# Preguntas clasicas : 

- ## **Funcion FizzBuzz** : 

Esta prueba consiste en escribir un pequeño programa que imprima los números del 1 al 100, pero que cuando el número sea múltiplo de 3, imprima la palabra “Fizz”; para múltiplos de 5 deberá imprimir “Buzz”, finalmente cuando el número sea múltiplo de 3 y de 5, deberá imprimir “FizzBuzz”.

- ### **FizzBuzz con if-else**
~~~
document.getElementById("app").innerHTML = `<h1>FizzBuzz</h1>`;
var cadena  ;
  
function fizzBuzzIfElse(i) { 
    
if (i % 3 === 0 && i % 5 === 0) {
     cadena = 'FizzBuzz';
     return console.log("FizzBuzz");
    } else {
        if (i % 3 === 0) {
            cadena = 'Fizz';
            return  console.log("Fizz");
            } else {
                    if (i % 5 === 0) {
                    cadena = 'Buzz';
                    return   console.log("Buzz");
                        } else {
                        cadena = i
                        return   console.log(cadena);
                        }
                    }
            }

}


for (let x = 1;x <= 100; x++) {

  fizzBuzzIfElse(x);
  //creamos nodo con cadena 
  let variable = document.createTextNode(cadena);
  //creamos salto de linea
  let salto = document.createElement('br') ;
  //agregamos nodos hijos al div
  document.getElementById("fizz-buzz").appendChild(variable);
  document.getElementById("fizz-buzz").appendChild(salto)

  }


~~~

- ### **FizzBuzz recursiva (sin for)**

~~~
const fizzBuzz = (randomNum, counter = 1) => {

    //si counter es mayor que randomNum sale (en counter = 101) 

    if (counter > randomNum) return;
 
    if (counter % 15 === 0) console.log('FizzBuzz');
    else if (counter % 5 === 0) console.log('Buzz');
    else if (counter  % 3 === 0) console.log('Fizz');
    else console.log(counter);
 
    //se llama a si misma e incrementa counter 
    //en la segunda llamada chequea counter = 2 por ejemplo 

    fizzBuzz(randomNum, counter + 1);
 };
 
fizzBuzz(100)
~~~

- ### **Fizzbuzz con concatenacion y for**

~~~
//fizzbuzz con concatenacion 

function fizzBuzzConcate(){

    for (let i = 1 ; i<+100; i++){

        let cadena = "";

        if(!(i%3)) {
            cadena += "Fizz"
        }
        if (!(i%5)) {
            cadena +="Buzz"
        }
        //concatenamos las salidas 
        console.log(cadena||i)
    }
}

fizzBuzzConcate();
~~~



### **Preguntas frecuentes Javascript** :
~~~
- Que son los callbacks ?
    Pasarle como parametro una funcion a otra funcion.

- Que entiendes del funcionamiento de los callbacks ? (referencia vs invocacion)

- Ejemplos de callbacks
    array.map((element,index) => callbackfunction) ;
    array.filter(element=>callbackfunction)
~~~

~~~
Que es una funcion anonima ? 
Cual es su diferencia con las funciones clasicas ? 
Tienen alguna desventaja ? Cuando las usarias ? 
~~~

~~~
Que es el hoisting? 
Que ejemplos puedes dar ? 
Como se relaciona con la TDZ?
Como evitarias tener errores con la TDZ?
~~~


