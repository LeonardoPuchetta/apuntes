# Manejo de eventos en Javascript :

## **element.addEventListener** :

- addEventListener() Registra un evento a un objeto en específico. El Objeto especifico puede ser un simple elemento en un archivo, el mismo documento , una ventana o un XMLHttpRequest.

- <a href='https://www.aprenderaprogramar.com/index.php?option=com_content&view=article&id=842:lista-de-eventos-javascript-on-click-dblclick-mouseover-mouseout-change-submit-keypress-cu01159e&catid=78&Itemid=206'>Ver lista de eventos en Javascript</a>

~~~
target.addEventListener(tipo, listener[, useCapture]);
~~~

- por ejemplo podemos agregarle un escuchador de eventos a un boton :
~~~
    let button = document.getElementsByClassName('btn');
    button[0].addEventListener('click', () => console.log('hola amigo'));
~~~

## **element.removeEventListener** :

- El método EventTarget.removeEventListener() remueve del EventTarget un detector de evento previamente registrado con EventTarget.addEventListener. El detector de evento a ser removido es identificado usando una combinación de tipos de eventos, la misma funcion del detector de eventos, y muchas opciones adicionales que pueden afectar 

~~~
target.removeEventListener(type, listener[, options]);
~~~
- El siguiente codigo nunca enviara un saludo por consola al presionar el button 
~~~
    const hola = () => console.log('hola amigo');

    let button = document.getElementsByClassName('btn');

    //evento agregado
    button[0].addEventListener('click', hola,true);

    //evento removido 
    button[0].removeEventListener('click', hola ,true);
~~~



