# Uso de setTimeout y setInterval :

- ## **setTimeout()** :

- setTimeout nos permite ejecutar una función una vez, pasado un intervalo de tiempo dado.
~~~
let timerId = setTimeout(func|código, [retraso]ms, [arg1], [arg2], ...)
~~~

- El valor retornado **timerId** es númerico y no es cero; identifica el temporizador creado con la llamada a setTimeout(); este valor puede pasarse a WindowOrWorkerGlobalScope.clearTimeout() para cancelar el temporizador.

- por ejemplo : 

~~~
var timeoutID;

function delayedAlert() {
  timeoutID = window.setTimeout(slowAlert, 2000);
}

function slowAlert() {
  alert("That was really slow!");
}

function clearAlert() {
  window.clearTimeout(timeoutID);
}
~~~

- ## **setInterval()** :

- llama a una función o ejecuta un fragmento de código de forma reiterada, con un retardo de tiempo fijo entre cada llamada.

~~~
let intervalID = setInterval(func, delay, arg0, arg1, /* ..., */ argN);
~~~

- Este método devuelve un ID de intervalo que lo identifica de forma única, de ese modo, el intervalo puede ser eliminado más tarde llamando a **clearInterval( )** .

- Ejemplo "Alternando dos colores" : 

~~~
html : 
<div id="my_box">
    <h3>Hello World</h3>
</div>
<button id="start">Start</button>
<button id="stop">Stop</button>
~~~
~~~
css : 
.go {
    color: green;
}
.stop {
    color: red;
}
~~~
~~~
javascript:

// variable para almacenar nuestro intervalID
let nIntervId;

function changeColor() {
    // comprobar si ya se ha configurado un intervalo
    if (!nIntervId) {
        nIntervId = setInterval(flashText, 1000);
    }
}

function flashText() {
    const oElem = document.getElementById("my_box");
    if (oElem.className === "go") {
        oElem.className = "stop";
    } else {
        oElem.className = "go";
    }
}

function stopTextColor() {
    clearInterval(nIntervId);
    // liberar nuestro inervalId de la variable
    nIntervId = null;
}

document.getElementById("start").addEventListener("click", changeColor);
document.getElementById("stop").addEventListener("click", stopTextColor);
~~~


