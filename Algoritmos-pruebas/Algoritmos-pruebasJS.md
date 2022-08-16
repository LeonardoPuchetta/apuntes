# Problemas clasicos y conceptos basicos  :





## **Problemas con arrays**

- ### **Recorrida de un array completo con for** :

~~~
let lenguajes = new Array ("php","js","Java","Phyton"); 

for (let i=0 ; i< lenguajes.length; i++){

document.write("<li>"+ lenguajes[i] + "</li>");
}
~~~

- ###  **Ejercicio 0 : Recorriendo arrays con forEach** 

 forEach itera todo el array , ejecuta la función indicada una vez por cada elemento del array.



~~~
lenguajes.forEach((elemento, indice)=> {-

    document.write("<li>"+ indice + "- " + elemento + "</li>");

});
~~~
forEach recibe como parametro una funcion de callback

- ### **Ejercicio 1**
~~~
- Implemente una funcion twoSum que dado un array de enteros y un entero K devuelva los pares de elementos de array que suman K 
~~~

- Solucion mediante for (**de orden n2**)
~~~
function twoSum(array,K){
    //variable para armar arreglo de pares 
    let pairSum = [];

    for (let index = 0 ; index<array.length ; index++){
        //recorremos los otros elementos del array empezando por el 
        //siguiente al index 
        for(let j = index +1 ; j < array.length ; j++){

            if (array[index] + array[j] == K ){
                pairSum.push([array[index],array[j]])
            }
        }
    }
    return pairSum
}
~~~

- Solucion mediante objeto(lista de pares)(**de orden n**) : 

~~~
function twoSumList(array,K){
    //variable para armar arreglo de pares 
    let pairSum = [];
    let pairList = {};

    for (let index = 0 ; index<array.length ; index++){
  
        if (pairList[array[index].toString()] != undefined){
            // si el elemento del array ya esta listado lo agrego al array de pares
            // junto con el valor en la lista correspondiente a esa key 
            pairSum.push([array[index],pairList[array[index].toString()]])

        } else {
                //si es undefined guardo el par numero:resto en la lista
                auxNumber = K - array[index];
                pairList[auxNumber.toString()]= array[index]
        }
    }

    return pairSum
}
~~~
- Solucion mediante ordenacion del array y posicion de indices de acuerdo al resultado de una suma 

~~~
function twoSumSort(array,K){

    let pairSum= [];
    let start = 0;
    let end = array.length - 1 ;

    //ordenamos el array de menor a mayor 
    let orderArray = array.sort((a,b)=>a-b);

    while (start<=end){

        suma = orderArray[start] + orderArray[end];
        if (suma == K){
            pairSum.push([orderArray[start],orderArray[end]]);
            //cambio indices
            end--;
            start++;

        } else {
            if (suma > K){
                //si me paso en la suma muevo el indice final
                end--;
            } else {
                if (suma < K){
                    //si me falta para la suma muevo el indice inicial
                    start++;
                }
            }
        }
    }
    return pairSum

}
~~~

- **Observaciones :**
- Usamos sort() con una funcion de comparacion
~~~
let orderArray = array.sort((a,b)=>a-b);
~~~
- Si el resultado es negativo (b > a) coloca primero a y luego b , si el resultado es positivo coloca a despues que b .
- Movemos los indices del array segun resultado de **suma**. 

 - ###  **Ejercicio 3 : Ordenando arrays**

 <a href="https://www.youtube.com/watch?v=7G5uT9OJZko&list=PLeYjfE1o93s8xVjPoJBqlIm31ljgopXVo&index=8">Link del ejercicio</a> 











# Preguntas clasicas : 

 ## **Funcion FizzBuzz** : 

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

 ## **Detector de Anagramas**

- Ambas palabras deben tener la misma longitud.
- No se debe distinguir entre mayúsculas y minúsculas. Nacionalista es un anagrama de  Altisonancia, aunque en el primer caso la N sea mayúscula y en el segundo la A.
- Cada letra de la primera palabra debe estar en la segunda.

~~~
function esAnagrama(palabra, posibleAnagrama){
    // Cambiar a minúsculas ambas cadenas
    palabra = palabra.toLowerCase();
    posibleAnagrama = posibleAnagrama.toLowerCase();
    
    // Convertir ambas cadenas en un arreglo
    palabra = palabra.split("");
    posibleAnagrama = posibleAnagrama.split("");
    
    // Ordenar ese arreglo
    palabra = palabra.sort();
    posibleAnagrama = posibleAnagrama.sort();
    
    // Una vez ordenados, los convertimos a cadena nuevamente
    palabra = palabra.join("");
    posibleAnagrama = posibleAnagrama.join("");
    
    // Finalmente comparamos
    
    if(palabra === posibleAnagrama){
      return true;
    }else{
      return false;
    }
  }
~~~

- **Observaciones :** 
- Convertimos todos los caracteres de las cadenas a minusculas (**toLowerCase( )**). 
- Convertimos las cadenas en arreglos para poder ordenarlas (**.split( )** sin argumento) y sustituimos las cadenas por dichos arreglos.
- Ordenamos los elementos de los arrglos (**.sort( )**) .
- Convertimos el ordenamiento en cadenas nuevamente (**.join( )**)
- Comparamos ambos ordenamientos. 
- El orden del algoritmo queda : **o(n) + log(n)**
### **Detector de anagramas para oraciones mapeando los strings :**

~~~
function esAnagramaMap(frase, posibleAnagrama){

      // eliminamos los espacios y cambiamos a minúsculas ambas cadenas
      frase = frase.replaceAll(" ","").toLowerCase();
      posibleAnagrama = posibleAnagrama.replaceAll(" ","").toLowerCase();

      //chequeamos largo de frases 
      if (frase.length == posibleAnagrama.length){

            //mapeamos las frases
            let fraseMap = wordToMap(frase);
            let posibleAnagramaMap = wordToMap(posibleAnagrama);

                for (let letter of Object.keys(fraseMap)){
                    // por cada clave/letra de fraseMap comparo los cardinales en los mapeos 
                    if (!(fraseMap[letter]==posibleAnagramaMap[letter])){
                        return false 
                    }
                }

            return true 

      } else {
        return false 
      }

}

function wordToMap(frase){
      //mapeamos la frase
      //objeto vacio para almacenar clave/valor 
      let letterMap = {};

      for (let letter of frase){
        if (letterMap[letter] == undefined){
            letterMap[letter] = 1 ;
        } else {
            letterMap[letter] += 1 ;
        }
      }
      return letterMap;
}

~~~

- **Observaciones :** 
- Convertimos todos los caracteres de las cadenas a minusculas (**toLowerCase( )**). 
- Creamos la funcion auxiliar **wordToMap()** para mapear en un objeto la cantidad de veces que aparece una letra.
- Si **no** coinciden los mapeos retorna false.


### **Detector de anagramas para oraciones (mas legible) :**


~~~
  function esAnagramaFrase(frase, posibleAnagrama){

    // eliminamos los espacios y cambiamos a minúsculas ambas cadenas
    frase = frase.replaceAll(" ","").toLowerCase();
    posibleAnagrama = posibleAnagrama.replaceAll(" ","").toLowerCase();
   
    // Convertir ambas cadenas en un arreglo y ordenamos los caracteres y convertimos a cadena nuevamente
    frase = frase.split("").sort().join("");
    posibleAnagrama = posibleAnagrama.split("").sort().join("");

    // Finalmente comparamos 
    if(frase === posibleAnagrama){
      return true;
    }else{
      return false;
    }
  }
~~~

## **Trabajando con el DOM**:

- ### **Ejercicio 1 (DOM y Strings):**
<a href='https://www.youtube.com/watch?v=UIENaGNL6es&list=PLeYjfE1o93s8xVjPoJBqlIm31ljgopXVo&index=6'>Link del ejercicio</a>

- **Html** :

~~~
<p class="upper-case">Dado este texto conviertalo todo a mayusculas </p>
<p class = "first-upper-case">Dado este texto convierta la primera letra de cada palabra a mayusculas </p>

  <form id="form-message">
    <label for="input-message">Ingrese el mensaje</label>
    <input id = "input-message" name = "input-message"/>
    <button type="submit">Guardar</button>
  </form>

<ul id="message-list">
  <li>Tus mensajes son:</li>
</ul>

<button id="upper-case-btn">Convertir la primera letra de cada palabra a mayusculas </button>
~~~

- **CSS :** 

~~~
.upper-case{
    text-transform: uppercase;
}
.first-upper-case{
    text-transform: capitalize;
}
~~~

- **JAVASCRIPT**:
~~~
//seleccionamos el formulario
const formulario = document.getElementById('form-message');

//agrgamos escuchador de eventos
formulario.addEventListener('submit',event =>{
    //cancelamos el comportamiento por defecto del navegador 
    event.preventDefault();
    //usamos FormData y el metodo get 
    let formDataElement = new FormData(event.target)

    //tomamos el valor del input desde el formData
    let inputMessage = formDataElement.get('input-message');

    //seleccionamos la lista ul 
    const list = document.getElementById('message-list');
    //agregamos el li al ul
    list.appendChild(createMessageElement(inputMessage));

    clearInput('input-message');


});

function createMessageElement(message){
    //creamos el li
    let messageItem = document.createElement('li');

    messageItem.className = "message-li";
    //creamos un nodo de texto
    let messageElement = document.createTextNode(message);
    //agregamos el nodo de taxto al li 
    messageItem.appendChild(messageElement);

    //retorna el li con el nodo 
    return messageItem
}

function clearInput(inputId){
    document.getElementById(inputId).value = "";
}

const upperCaseButton = document.getElementById('upper-case-btn');

upperCaseButton.addEventListener('click',event=>{
    event.preventDefault();
    let allMessage = document.getElementsByClassName('message-li');

    for (li of allMessage){
        li.classList.add('first-upper-case')
    }

})
~~~

- ### **Ejercicio 2 (Strings):**
<a href='https://www.youtube.com/watch?v=T6j7x5o8fZk&list=PLeYjfE1o93s8xVjPoJBqlIm31ljgopXVo&index=7'>Link del ejercicio</a>




- **JAVASCRIPT :**
~~~
let text = 'yo dono rosas , oro no doy';
~~~

//**parte 1 (forma iterativa)**
~~~
function reverse(text){
let textReverse="";    
for (letter of text) {   
    textReverse = letter + textReverse ;  
}
return textReverse;
}
console.log(reverse(text))
~~~

//**parte 2 (desestructuracion)**
~~~
//La sintaxis de desestructuración es una expresión de JavaScript 
//que permite desempacar valores de arreglos o 
//propiedades de objetos en distintas variables.

function destructuringReverse(text){
    //separamos el string en un array 
    let destructuringText = [...text];
    //revertimos el array
    destructuringText.reverse();
    //juntamos el array y lo convertimos en string 
    let textReverse = destructuringText.join("");

    return textReverse

}
console.log(destructuringReverse(text));
~~~

//**parte 3 (recursion)**

~~~
function recursiveReverse(text){

    //condicion de salida
    if (text === ""){
        return ""
    }
   //uso recursivo
   return recursiveReverse(text.substring(1)) + text.charAt(0)  ;
}

console.log(recursiveReverse(text));
~~~
//**parte 4 
// no se puede realizar porque los string son inmutables en javascript**



//**parte 5 (palindrome)**

~~~
//funcion para limpiar texto de espacios y comas 
function cleanTextFunction(text) {
    let cleanText = text.toLowerCase().split(" ").join("").replace(",","");
    return cleanText 
}

function isPalindrome(text){

    //limpiamos texto
    let cleanText = cleanTextFunction(text);
    //invertimos 
    let reverseCleanText = recursiveReverse(cleanText);
    //retornamos la comparacion
    return reverseCleanText===cleanText
}

isPalindrome(text);
console.log(isPalindrome(text))
~~~


//**parte 6**
~~~ 
function reverseWord(text){

    //guardamos las palabras de la frase en un array 
    let textSplit = text.split(" ");

    //invertimos cada palabra con map del array y guardamos en un nuevo array 
    let textSplitInvert = textSplit.map(word => recursiveReverse(word));
    //retornamos el string 
    return textSplitInvert.join(" ")

}
console.log(reverseWord(text));
~~~



----------------------------------------------

## **Preguntas/ejercicios frecuentes Javascript** :
~~~
- Que son los callbacks ?
    Pasarle como parametro una funcion a otra funcion.

- Que entiendes del funcionamiento de los callbacks ? (referencia vs invocacion)

- Ejemplos de callbacks
    array.map((element,index) => callbackfunction) ;
    array.filter(element=>callbackfunction);
    cuando se dispara algun evento (addEventListener)
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

~~~
- Detector de anagramas (roma - amor)
~~~

~~~
- Suma de pares de numeros en array de enteros 
~~~

~~~
Manipulacion del DOM
~~~






