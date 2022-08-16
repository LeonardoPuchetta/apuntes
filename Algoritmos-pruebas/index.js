

// document.getElementById("app").innerHTML = `<h1>FizzBuzz</h1>`;
// var cadena  ;
  
// function fizzBuzzIfElse(i) { 
    
// if (i % 15 === 0) {
//      cadena = 'FizzBuzz';
//      return console.log("FizzBuzz");
//     } else {
//         if (i % 3 === 0) {
//             cadena = 'Fizz';
//             return  console.log("Fizz");
//             } else {
//                     if (i % 5 === 0) {
//                     cadena = 'Buzz';
//                     return   console.log("Buzz");
//                         } else {
//                         cadena = i
//                         return   console.log(cadena);
//                         }
//                     }
//             }

// }


// for (let x = 1;x <= 100; x++) {

//   fizzBuzzIfElse(x);
//   //creamos nodo con cadena 
//   let variable = document.createTextNode(cadena);
//   //creamos salto de linea
//   let salto = document.createElement('br') ;
//   //agregamos nodos hijos al div
//   document.getElementById("fizz-buzz").appendChild(variable);
//   //document.getElementById("fizz-buzz").appendChild(salto)

//   }

// //con arrow function 
// const fizzBuzzRecursive = (randomNum, counter = 1) => {
//     //si counter es mayor que randomNum sale (en counter = 101) 
//     if (counter > randomNum) return;
 
//     if (counter % 15 === 0) console.log('FizzBuzz');
//     else if (counter % 5 === 0) console.log('Buzz');
//     else if (counter  % 3 === 0) console.log('Fizz');
//     else console.log(counter);
 
//     //se llama a si misma e incrementa counter 
//     //en la segunda llamada chequea counter = 2 
//     fizzBuzzRecursive(randomNum, counter + 1);
//  };
// fizzBuzzRecursive(100)

// //fizzbuzz con concatenacion 
// function fizzBuzzConcate(){

//     for (let i = 1 ; i<+100; i++){

//         let cadena = "";
//         if(!(i%3)) {
//             cadena += "Fizz"
//         }
//         if (!(i%5)) {
//             cadena +="Buzz"
//         }
//         console.log(cadena||i)
//     }
// }
// fizzBuzzConcate();

// // Función anónima "saludo"
// const saludo = function () {
//     return "Hola";
//   };
  
//   saludo; // ƒ () { return 'Hola'; }
//   saludo(); // 'Hola'


//  let miObjeto = {
//     saludar : (algo) => {console.log('hola' + " " + algo)},
//     despedirse : () => {console.log('chau')}
//  };

//  miObjeto.saludar('brooooo!!!');
//  miObjeto.despedirse();

//  let miArray = [1.12,12,12,"hola"];

//  console.log(miArray);
//  miArray.map(index => console.log(index*2));
//  console.log(miArray);
//  let dobles =  miArray.map(index =>index*2);
//  console.log(dobles);

//  let filtro = miArray.filter(index => index >= 13);
//  console.log(filtro)

//     const hola = () => console.log('hola amigo');

//     let button = document.getElementsByClassName('btn');
  
//     button[0].addEventListener('click', hola,true);

//     button[0].removeEventListener('click', hola ,true);



//document.addEventListener("DOMContentLoaded",load,false);

// function sonAnagramas (){

//     let result = true ; 
//     let numCar , indexinput2 ;

//     let input1 = prompt('Ingrese la primer palabra');
//     let input2 = prompt('ingrese la segunda palabra');
    
//     //chequeo de longitud 
//     if (input1.length != input2.length){
//         result = false 
//     } else {
//         numCar = 0 ;
//         while (result && (numCar < input1.length)){
//             //buscamos si los  caracteres de input1 estan en input2 
//             indexinput2 = input2.indexOf(input1[numCar]);
//             //en caso de no encontrarlo
//             if(indexinput2 == -1 ){
//                 result = false ;

//               // si lo encontramos lo borramos de input2      
//             } else {
//                 input2.split(indexinput2);
//                 //console.log(input2.split(input2[indexinput2]))
//             }
//             numCar++;

//         }
//     }

//     console.log(result)

//     return result

// }

// sonAnagramas();

//    let input1 = prompt('Ingrese la primer palabra');
//    let input2 = prompt('ingrese la segunda palabra');

//    alert ('Es anagrama :' + esAnagrama(input1,input2));



// function esAnagrama(palabra, posibleAnagrama){
//     // Cambiar a minúsculas ambas cadenas
//     palabra = palabra.toLowerCase();
//     posibleAnagrama = posibleAnagrama.toLowerCase();
    
//     // Convertir ambas cadenas en un arreglo
//     palabra = palabra.split("");
//     posibleAnagrama = posibleAnagrama.split("");
    
//     // Ordenar ese arreglo
//     palabra = palabra.sort();
//     posibleAnagrama = posibleAnagrama.sort();
    
//     // Una vez ordenados, los convertimos a cadena nuevamente
//     palabra = palabra.join("");
//     posibleAnagrama = posibleAnagrama.join("");
    
//     // Finalmente comparamos
    
//     if(palabra === posibleAnagrama){
//       return true;
//     }else{
//       return false;
//     }
//   }

//   function esAnagramaFrase(frase, posibleAnagrama){

//     // eliminamos los espacios y cambiamos a minúsculas ambas cadenas
//     frase = frase.replaceAll(" ","").toLowerCase();
//     posibleAnagrama = posibleAnagrama.replaceAll(" ","").toLowerCase();
   
//     // Convertir ambas cadenas en un arreglo y ordenamos los caracteres y convertimos a cadena nuevamente
//     frase = frase.split("").sort().join("");
//     posibleAnagrama = posibleAnagrama.split("").sort().join("");

//     // Finalmente comparamos 
//     if(frase === posibleAnagrama){
//       return true;
//     }else{
//       return false;
//     }
//   }

// //   let input1 = prompt('Ingrese la primer palabra');
// //    let input2 = prompt('ingrese la segunda palabra');

// //    alert ('Es anagrama :' + esAnagramaFrase(input1,input2));

// function esAnagramaMap(frase, posibleAnagrama){

//       // eliminamos los espacios y cambiamos a minúsculas ambas cadenas
//       frase = frase.replaceAll(" ","").toLowerCase();
//       posibleAnagrama = posibleAnagrama.replaceAll(" ","").toLowerCase();

//       //chequeamos largo de frases 
//       if (frase.length == posibleAnagrama.length){

//             //mapeamos las frases
//             let fraseMap = wordToMap(frase);
//             let posibleAnagramaMap = wordToMap(posibleAnagrama);

//                 for (let letter of Object.keys(fraseMap)){
//                     // por cada clave/letra de fraseMap comparo los cardinales en los mapeos 
//                     if (!(fraseMap[letter]==posibleAnagramaMap[letter])){
//                         return false 
//                     }
//                 }

//             return true 

//       } else {
//         return false 
//       }

// }

// function wordToMap(frase){
//       //mapeamos la frase
//       //objeto vacio para almacenar clave/valor 
//       let letterMap = {};

//       for (let letter of frase){
//         if (letterMap[letter] == undefined){
//             letterMap[letter] = 1 ;
//         } else {
//             letterMap[letter] += 1 ;
//         }
//       }
//       return letterMap;
// }


//    let input1 = prompt('Ingrese la primer palabra');
//    let input2 = prompt('ingrese la segunda palabra');

//    alert ('Es anagrama :' + esAnagramaMap(input1,input2));


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

console.log(twoSum([0,12,1,5,6,8,4,3,9],12));

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

console.log(twoSumList([0,12,3,5,6,9],12));

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

console.log(twoSumSort([0,3,5,6,9,12],12));

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

//////////////////////////////////////////////////
let text = 'yo dono rosas , oro no doy';

//parte 1 (forma iterativa)
function reverse(text){

let textReverse="";    
for (letter of text) {   
    textReverse = letter + textReverse ;  
}
return textReverse;
}

console.log(reverse(text))

//parte 2 (desestructuracion)
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

//parte 3 (recursion)

function recursiveReverse(text){

    //condicion de salida
    if (text === ""){
        return ""
    }
   //uso recursivo
   return recursiveReverse(text.substring(1)) + text.charAt(0)  ;
}

console.log(recursiveReverse(text));

//parte 4 
// no se puede realizar porque los string son inmutables en javascript



//parte 5 (palindrome)

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


//parte 6 
function reverseWord(text){

    //guardamos las palabras de la frase en un array 
    let textSplit = text.split(" ");

    //invertimos cada palabra con map del array y guardamos en un nuevo array 
    let textSplitInvert = textSplit.map(word => recursiveReverse(word));
    //retornamos el string 
    return textSplitInvert.join(" ")

}
console.log(reverseWord(text));






