
- 34740 . 

## Clase 1 (Nivelacion) 

- Proyecto final : Tienda ecommerce (**serigrafias , remeras , artesanias**)

- Pagina ppal : NavBar , catalogo de productos 

- styled-components para la estetica de componentes 
- material-ui 


- Base de Datos : Firebase 

- No va a incluir formas de pago .

- Inicios de React : 

- SPA - vistas vs paginas 

justamente con una app SPA los buscadores no encuentran la estructura HTML que está buscando


- Con Gatsby y Next se puede mejorar posisionamiento en SEO de una SPA con React . 

## Clase 2 ( Instalación y configuración del entorno ) 

- Desafío: Crear la app utilizando el CLI

- ### Funcionamiento de ReactJS : 

- Cambios casi instantaneos en las vistas :  Virtual DOM vs React Fiber y la Reconciliacion 

<a href='https://es.reactjs.org/docs/faq-internals.html'>https://es.reactjs.org/docs/faq-internals.html</a>

<a href='https://github.com/acdlite/react-fiber-architecture'>https://github.com/acdlite/react-fiber-architecture</a>


- React lee una copia del DOM real , el Virtual DOM y de esta manera no consume recursos en acceder al Real DOM (Vue tambien lo hace). 

<a href='https://www.youtube.com/watch?v=M-Aw4p0pWwg'>https://www.youtube.com/watch?v=M-Aw4p0pWwg</a>

- React revisa y registra una diferenciacion entre las dos copias del DOM Real (diffing), REACT siempre lee las copias del DOM , cuando encuentra la diferencia hace la reconciliacion o patch modificando el DOM real y ambas copias del mismo . 

- Fiber tree : tecnologia que enlaza elementos en el Virtual DOM . 

- Flujo unidireccional de datos : los datos bajan y los eventos suben 

Ver transparencias 

- ### Node JS : 
- Entorno de desarrollo para ejecutar JS 
- El browser tiene el motor V8 que hace las veces de Node para ejecutar Javscript
- ### npm ((Node Package Manager))

- Cuando usamos Node.js, rápidamente tenemos que instalar módulos nuevos (librerías), ya que al ser un sistema fuertemente modular viene prácticamente “vacío”. 
Por lo tanto, para utilizar una funcionalidad de alguna librería publicada, deberemos instalar módulos adicionales. 
Esta operación se realiza de forma muy sencilla con la herramienta npm 

 Funciona en dos formas : 
- Como un repositorio ampliamente utilizado para la publicación de proyectos Node.js de código abierto.

- Como una herramienta de línea de comandos. Esta utilidad ayuda a instalar y desinstalar paquetes, gestionar versiones y gestionar dependencias necesarias para ejecutar un proyecto.

---------------------------
- Actualizar node a una version superior a 14 

### El cli y react 

- La interfaz de línea de comandos o interfaz de línea de órdenes, es un método que permite a los usuarios dar instrucciones a algún programa informático por medio de una línea de texto simple.

- React tiene su propia CLI, pero actualmente solo admite la creación de una aplicación (create-react-app).
- Creacion de una aplicacion react con una sola linea de comando :
**npx create-react-app serigrafia-commerce**



## Clase 3 ( JSX - transpiling) 

Objetivos : 

- Entender las aristas del sugar syntax como proceso evolutivo de los lenguajes.

- Expandir nuestra sintaxis avanzada de JavaScript.(https://www.freecodecamp.org/news/js-diabetes-and-understanding-syntax-sugar-5de249ee9ebc/)

 - Conocer el rol de webpack y babel en el bundling/retrocompatibilidad.

- Desarrollar código en JSX.

- Otra forma para crear aplicaciones react : 

<a href='https://vitejs.dev/'>https://vitejs.dev/</a>

- Vite inicializa un proyecto mucho más simple y minimalista que create-react-app. Es muy util si tienen una compu con muy pocos recursos

- RETROCOMPATIBILIDAD y polifill : 
- compatibilidad con distintos navegadores : 
<a href='https://caniuse.com/'>https://caniuse.com/</a>

- Los polyfills nos permiten hacer nuestra aplicación compatible con navegadores antiguos, que no admiten de forma nativa alguna nueva funcionalidad

- uso de prototype para agregar funcionalidades a un elemento Array por ejemplo 

- repasar uso de operador this . 

- BUNDLING CON WEBPACK : 

- TRANSPILING : por ejemplo pasar de JSX a JS para que lo entienda el navegador (JSX es una extensión de sintaxis de Javascript que se parece a HTML) , en nuestro caso la tecnologia que hace esto es Babel . 

- Tarea : Hacer un Navbar : 
- con boostrap o react-boostrap
- haciendo un componente 

- Sugar Syntax: refiere a la sintaxis agregada a un lenguaje de programación con el objetivo de hacer más fácil y eficiente su utilización. Favorece su escritura, lectura y comprensión.

- Webpack: es un module bundler o empaquetador de módulos.

- Eject: es una acción permanente, que permite tener un control más específico del bundling, a costa de que de ahora en adelante tendremos que encargarnos de mantenerlo.

- Transpiling: es el proceso de convertir código escrito en un lenguaje, a su representación en otro lenguaje.

- JSX: es una extensión de sintaxis de Javascript que se parece a HTML. Oficialmente, es una extensión que permite hacer llamadas a funciones y a construcción de objetos. No es ni una cadena de caracteres, ni HTML.

## Clase 4 (Componentes) 

- Vamos a decir que existen tipos de componentes y patrones. 

- Los dividiremos en estas dos representaciones, que después servirán de base para implementar múltiples patrones.

- - **Class based components**
componentes basados en clases (SMART COMPONENTS)

- - **Function based components**
componentes basados en funciones (DUMB COMPONENTS)

- Puntos en comun :

Pueden recibir propiedades (props).
Tienen la capacidad de hacer render de un único elemento(Aunque este elemento pueda tener muchos elementos dentro).).

- convencion : componentes con extension .jsx , archivos sin html con extension .js (patron de diseno)

- cuando el export es default, el import no necesita llaves, cuando el export es nombrado, el import necesita llaves {}

- 
## Clase 5 (Componentes) 


## Clase 6 (Componentes) 

- ciclo de vida de los componentes :
-nacimiento (montaje en el DOM) , actualizacion , desaparicion (se va del DOM). Hay maneras de actuar sobre el componente en cada etapa del ciclo de vida 
- nacimiento (componentDidMount) (useEffect aqui podemos hacer consultas a la base de datos por ejemplo )
- Actualizacion (componentDidUpdate)(useEffect tambien siguiendo el estado en el array del segundo parametro )
- promises 

## Clase 7 :

**Modelo cliente-servidor**: establece que los distintos consumidores se identifican entre ellos y acuerdan una manera de transferir la información.

**Push**: nace para poder generar engagement, y lograr que los usuarios recuerden que nuestra app existe, y que puede proveerles con algo que les pueda interesar, en el momento en el que el servidor considere oportuno.

**Requests via http/s**: vienen para ayudarnos a realizar una solicitud a un servidor, y nos permiten establecer un protocolo de transferencia.

**URL y VERB**: nos permiten definir una manera de explicarle al servidor la dirección y nuestras intenciones.

**Query params**: nos permiten incluir en la dirección información que se usa para especificarle al receptor parámetros para efectuar una búsqueda.

## Clase 8 (Routing y navegacion) 

- Por defecto, React no viene
con un mecanismo integrado
de navegación.

- Esto es para mantener sus dependencias al mínimo y dado que no todo proyecto necesita routing, se maneja como una dependencia aparte.

- Una vez realizado el import necesitamos configurar dos cosas:

    - Wrappear (envolver) la aplicación en un BrowserRouter
 Crear un Switch (donde proyectaremos las vistas navegadas)
    - Crear los Route’s de las distintas navegaciones con sus componentes asociados



## Clase 9 (Eventos) 


- ### **addEventListenner**
- El DOM tiene una serie de eventos estándar, y se dividen en varias categorías:

- - Dispositivo/acción: mouse, input, keyboard, wheel, focus, etcétera.

- - Custom events: es posible definir eventos propios que disparen la información que queramos.

- Un **Event Listener** es un patrón de diseño que sirve, como su nombre lo indica, para escuchar cuando un algo ocurre en algún elemento, librería o API, y poder realizar una acción en consecuencia.

- Nota: invocar el **removeEventListener** en la función de limpieza de nuestros hooks en donde los hayamos registrado.
~~~
Se des-registran con el nombre y la referencia a la función con que los registramos (no alcanza únicamente el nombre).

Si registras manualmente un evento del DOM en tu componente de react hazlo dentro de un effect y asegúrate de de-registrarlo en la función de limpieza en el return del efecto.

Recordemos: Si dejamos event listeners sin des-registrar corremos riesgos de crear leaks de memoria o registrar un evento más de una vez ( se ejecutara una vez por cada register ).
~~~

- ### **Eventos sintéticos**

En este caso event es un evento sintético de React, en React todos los manejadores de eventos son instancias de SyntheticEvents. Los eventos sintéticos son una envoltura de los eventos nativos del navegador, por lo que estos eventos cuentan con la misma interfaz de los eventos nativos, como por ejemplo preventDefault() y stopPropagation(), con la ventaja de que todos estos eventos funcionan idénticamente en la mayoría de los navegadores.

- En la jerarquia de componentes los eventos fluyen de abajo hacia arriba

- Cancelar funcionamiento por default : **event.preventDefault()**, esto se utiliza para eventos estandar en react 

- Detener propagacion hacia arriba de un evento : Los eventos por default se ejecutan en el elemento, y en cada uno de sus ancestros. Si esto puede traer algún efecto secundario podemos cancelar la propagación (bubbling): **event.stopPropagation()**

### **Intercambiabilidad** : 

- 






## Clase 10 (Context) 

- reeentregar 8 
- entregar 9 clase 9 
- entregar clase de context (desafio): funcionalidad de addToCart , (cart = array) , sacar producto del carrito , borrar productos del carrito , (itemDetail hara el "push" al array de cart)(el array de cart estara en el context)

- Redux sirve para gestionar ese estado global en un store 
- La otra opcion es react context (useContext)
<a href='https://es.reactjs.org/docs/context.html'>https://es.reactjs.org/docs/context.html</a>


## Clase 11 (Tecnicas de rendering) 

- renderizado condicional :

## Clase 12 (Firebase 1) 
 





















