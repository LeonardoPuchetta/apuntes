

document.getElementById("app").innerHTML = `<h1>FizzBuzz</h1>`;
var cadena  ;
  
function fizzBuzzIfElse(i) { 
    
if (i % 15 === 0) {
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

//
const fizzBuzzRecursive = (randomNum, counter = 1) => {
    //si counter es mayor que randomNum sale (en counter = 101) 
    if (counter > randomNum) return;
 
    if (counter % 15 === 0) console.log('FizzBuzz');
    else if (counter % 5 === 0) console.log('Buzz');
    else if (counter  % 3 === 0) console.log('Fizz');
    else console.log(counter);
 
    //se llama a si misma e incrementa counter 
    //en la segunda llamada chequea counter = 2 
    fizzBuzzRecursive(randomNum, counter + 1);
 };
 
fizzBuzzRecursive(100)

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
        console.log(cadena||i)
    }
}

fizzBuzzConcate();
