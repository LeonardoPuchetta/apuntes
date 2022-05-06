<h1> React   </h1> 

|  |  |
| ------------- | ------------- |
| Componentes  |   |
| Estados  | **useState( )**  |
| Hooks  | Hooks personalizados , useEffect()  |


-----------------------------
## Componentes :

- Para crear un componente podemos simplemente crear una constante y asignarle una funcion :

~~~
  const Componente = (props) => {
    return (
      <div>
        <h1>Esto es un Componente </h1>
      </div>
    )
  }
~~~

- Otra opcion puede ser mediante una funcion Javascript :

~~~
 function Componente(props){

   return (
    <div>
        <h1>Esto es un Componente </h1>
    </div>
   )
 }
~~~

También puedes utilizar una clase de ES6 para definir un componente:
~~~
class Welcome extends React.Component {
  render() {
    return <h1>Hello, {this.props.name}</h1>;
  }
}
~~~


- Los componentes pueden recibir props

~~~
Nota: Comienza siempre los nombres de componentes con una letra mayúscula.
React trata los componentes que empiezan con letras minúsculas como etiquetas del DOM. Por ejemplo, <div /> representa una etiqueta div HTML pero <Welcome /> representa un componente y requiere que Welcome esté definido.
~~~
---------------------------------------

Los componentes de React permiten dividir la UI en piezas independientes, reusables y pensar acerca de cada pieza aisladamente. Los componentes de React pueden ser definidos creando subclases **React.Component o React.PureComponent.**

Los componentes de React también pueden ser definidos como funciones que se pueden envolver:

- React.memo

Conceptualmente, los componentes son como las funciones de JavaScript. Aceptan entradas arbitrarias (llamadas “props”) y retornan elementos de React que describen lo que debe aparecer en la pantalla.



--------------------------------------
<br/>

# Hooks 

¿Qué es un Hook? Un Hook es una función especial que permite “conectarse” a características de React. Por ejemplo, useState es un Hook que te permite añadir el estado de React a un componente de función. Más adelante hablaremos sobre otros Hooks.

## Estados - useState( ) :

**¿Qué hace la llamada a useState?** 

Declara una “variable de estado”. Esta es una forma de “preservar” algunos valores entre las llamadas de la función - useState es una nueva forma de usar exactamente las mismas funciones que this.state nos da en una clase. Normalmente, las variables “desaparecen” cuando se sale de la función, pero **las variables de estado son conservadas por React**.



**¿Qué pasamos a useState como argumento?**

 El único argumento para el Hook useState() es el estado inicial. Al contrario que en las clases, el estado no tiene por qué ser un objeto. Podemos usar números o strings si es todo lo que necesitamos. 

**¿Qué devuelve useState?**

 Devuelve una **pareja de valores** : el estado actual y una función que lo actualiza. Por eso escribimos const [count, setCount] = useState().

**el estado solamente se crea la primera vez que nuestro componente se renderiza. Durante los siguientes renderizados, useState nos da el estado actual.**

### Leyendo y actualizando estados :

Para leer un estado simplemente hacemos referencia a el mediante corchetes : 

~~~
  <p>You clicked {count} times</p>
~~~

Para actualizar llamamos a la funcion set :
~~~
    <button onClick={() => setCount(count + 1)}>
        Click me
    </button>
~~~

No tienes que usar obligatoriamente tantas variables de estado: las variables de estado pueden contener objetos y arrays para que puedas agrupar la información relacionada. Sin embargo, al contrario que en una clase, **actualizar una variable de estado siempre la reemplaza en lugar de combinarla**.\



 <br/>

### Ejemplo de uso de useState para un formulario 
~~~
//estado para guardar entradas 
const [inputs,setInputs] = useState({

  email:"",
  name: "",
  lastname:"",
  password:"",
  repeatPassword:"",
  privacyPolicy: false

})

//funcion para capturar eventos de cambios en el Form 
const changeForm = event => {

  //tenemos un solo checkbox 
  if (event.target.name === 'privacyPolicy'){
      setInputs({
        ...inputs ,
        [event.target.name] : event.target.checked
      })
  } else {
    //los demas inputs tienen igau name que los campos del state a completar 
    setInputs({
      ...inputs,
      [event.target.name] : event.target.value
    })
  }
 

}
~~~

<a href='https://www.youtube.com/watch?v=5KvlQDYDZwY&list=PLV8x_i1fqBw0Kn_fBIZTa3wS_VZAqddX7&index=3'>Midudev : Estado del componente, Renderizado Condicional y Eventos - Bootcamp FullStack Gratuito </a> 

### Opciones para utilizar estados :

- Se pueden declarar y utilizar dentro de los componentes que los utilizan o declararlos de manera mas global y pasarlos por props.

## Efectos - useEffect( ) : 

**El Hook de efecto te permite llevar a cabo efectos secundarios en componentes funcionales**:

Peticiones de datos, establecimiento de suscripciones y actualizaciones manuales del DOM en componentes de React serían ejemplos de efectos secundarios. Tanto si estás acostumbrado a llamar a estas operaciones “efectos secundarios” (o simplemente “efectos”) como si no, probablemente los has llevado a cabo en tus componentes con anterioridad.

Por aqui un ejemplo :

~~~
function Example() {
  const [count, setCount] = useState(0);

  // De forma similar a componentDidMount y componentDidUpdate
  useEffect(() => {
    // Actualiza el título del documento usando la API del navegador
    document.title = `You clicked ${count} times`;
  });

  return (
    <div>
      <p>You clicked {count} times</p>
      <button onClick={() => setCount(count + 1)}>
        Click me
      </button>
    </div>
  );
}
~~~

### Hay dos tipos de efectos secundarios en los componentes de React: aquellos que no necesitan una operación de saneamiento y los que sí la necesitan. Vamos a profundizar más en esta distinción.

### **Efectos sin saneamiento** :

En ciertas ocasiones, queremos ejecutar código adicional **después de que React haya actualizado el DOM**. Peticiones de red, mutaciones manuales del DOM y registros, son ejemplos comunes de efectos que no requieren una acción de saneamiento. Decimos esto porque **podemos ejecutarlos y olvidarnos de ellos inmediatamente**.

~~~
import React, { useState, useEffect } from 'react';

function Example() {
  const [count, setCount] = useState(0);

  useEffect(() => {
    document.title = `You clicked ${count} times`;
  });

  return (
    <div>
      <p>You clicked {count} times</p>
      <button onClick={() => setCount(count + 1)}>
        Click me
      </button>
    </div>
  );
}
~~~
**¿Qué hace useEffect?**

 Al usar este Hook, le estamos indicando a React que el componente tiene que hacer algo después de renderizarse. React recordará la función que le hemos pasado (nos referiremos a ella como nuestro “efecto”), y la llamará más tarde después de actualizar el DOM. En este efecto, actualizamos el título del documento, pero **también podríamos hacer peticiones de datos o invocar alguna API imperativa**.

**¿Por qué se llama a useEffect dentro del componente?**

 Poner useEffect dentro del componente nos permite acceder a la variable de estado count (o a cualquier prop) directamente desde el efecto. No necesitamos una API especial para acceder a ella, ya que se encuentra en el ámbito de la función. Los Hooks aprovechan los closures de JavaScript y evitan introducir APIs específicas de React donde JavaScript ya proporciona una solución.

**¿Se ejecuta useEffect después de cada renderizado?**

 ¡Sí! Por defecto se ejecuta después del primer renderizado y después de cada actualización. Más tarde explicaremos cómo modificar este comportamiento. En vez de pensar en términos de “montar” y “actualizar”, puede resultarte más fácil pensar en efectos que ocurren “después del renderizado”. **React se asegura de que el DOM se ha actualizado antes de llevar a cabo el efecto.**

 A diferencia de componentDidMount o componentDidUpdate, los efectos planificados con useEffect no bloquean la actualización de la pantalla del navegador. Esto hace que tu aplicación responda mejor. La mayoría de efectos no necesitan suceder de manera síncrona. 
 
 En los casos poco comunes en los que se necesita una ejecución síncrona (como en mediciones de la disposición de elementos), podemos usar el Hook **useLayoutEffect** con una API idéntica a la de useEffect.

------------------------------------
 ### **Efectos con saneamiento**:

Por ejemplo, si queremos establecer una suscripción a alguna fuente de datos externa. En ese caso, ¡es importante sanear el efecto para no introducir una fuga de memoria! 

~~~
import React, { useState, useEffect } from 'react';

function FriendStatus(props) {
  const [isOnline, setIsOnline] = useState(null);

  useEffect(() => {
    function handleStatusChange(status) {
      setIsOnline(status.isOnline);
    }
    ChatAPI.subscribeToFriendStatus(props.friend.id, handleStatusChange);
    // Especifica cómo sanear este efecto:
    return function cleanup() {
      ChatAPI.unsubscribeFromFriendStatus(props.friend.id, handleStatusChange);
    };
  });

  if (isOnline === null) {
    return 'Loading...';
  }
  return isOnline ? 'Online' : 'Offline';
}
~~~

**¿Por qué hemos devuelto una función en nuestro efecto?**

 Este es un **mecanismo opcional de los efectos**. Todos los efectos pueden devolver una función que los sanea más tarde. Esto nos permite mantener la lógica de añadir y eliminar suscripciones cerca la una de la otra. ¡Son parte del mismo efecto!

**¿Cuándo sanea React el efecto exactamente?**

 React sanea el efecto cuando el componente se desmonta. Sin embargo, como hemos aprendido anteriormente, los efectos no se ejecutan solo una vez, sino en cada renderizado. He aquí el motivo por el cual React también sanea los efectos de renderizados anteriores antes de ejecutar los efectos del renderizado actual. Más adelante analizaremos por qué esto ayuda a evitar errores y cómo omitir este funcionamiento en el caso de que provoque problemas de rendimiento.

No tenemos que nombrar la función devuelta por el efecto. La hemos llamado **cleanup** esta vez para clarificar su propósito, pero podemos devolver una función flecha o nombrarla de otra forma.

### **Reglas de Uso de Hooks** :
<br/>

**Llama Hooks solo en el nivel superior
No llames Hooks dentro de ciclos, condicionales o funciones anidadas. En cambio, usa siempre Hooks en el nivel superior de tu función en React, antes de cualquier retorno prematuro.**

 Siguiendo esta regla, te aseguras de que los hooks se llamen en el mismo orden cada vez que un componente se renderiza. Esto es lo que permite a React preservar correctamente el estado de los hooks entre multiples llamados a useState y useEffect. 

**Llama Hooks solo en funciones de React
No llames Hooks desde funciones JavaScript regulares**. En vez de eso, puedes:

- Llama Hooks desde componentes funcionales de React.
- Llama Hooks desde Hooks personalizados 

Siguiendo esta regla, te aseguras de que toda la lógica del estado de un componente sea claramente visible desde tu código fuente.

## Hooks personalizados 

<a href='https://es.reactjs.org/docs/hooks-custom.html'>https://es.reactjs.org/docs/hooks-custom.html</a>







----------------------------------------

## Registro de datos en base mongoDB 

### Caso ) tomamos datos de un formulario :

Nuestro formulario(**FormComponent**) debe tener una funcion **register** en la cual podemos hacer alguna validacion y en ultima instancia ejecutar una funcion **newAlgoApi(inputs)**(usualmente an carpeta **api** del client) donde los **inputs** son el resultado de recoger la informacion de las entradas del **FormComponent**. 

En **client** -->**api** -->**algo.js**--> **newAlgoApi()** :

- Configuramos la url de la peticion
- Configuramos los params donde ira el method, el body y los headers 
- Realizamos la fetch o busqueda la cual nos devuelve una promesa con una response , un result y la captura de un error . 

Esta funcion en el client se conecta con su correspondiente **newAlgo()** del server , esta recibe una request y da una response.

En **server** --> **controllers** --> **algo.js** --> **newAlgo()**:

- Traemos el modelo de mongoose de **models --> algo.js**
- Creamos el objeto vacio en la base 
~~~
const algo = new Algo();
~~~
- Tomamos la info de la **request.body** y llenamos los campos del objeto

- Usamos el metodo save de mongoose y configuramos las distintas respuestas  :
~~~
algo.save((error,algoStored) => {
~~~

Finalmente debemos implementar una funcion de **reset** que vacie los inputs uns vez en viado el formulario , esta funcion se ejecutara dentro de la funcion **register** . 

## Recuperando datos de la base 

Desde el server utilizamos una funcion getAlgos() en la cual utilizamos el metodo find() del modelo Algo de mongoose :

~~~
Algo.find()
~~~

el cual nos devulve una promesa con una response , un result y un error . 









