
# Maquetacion con CSS

<a href='https://www.w3schools.com/cssref/'>https://www.w3schools.com/cssref/</a>

----------------------------------------------------
|Aspecto|Descripcion|codigo|
|----------------|------------------|--------------|
| Tamaño de la fuente | ---------|**font-size**|
|Tipo de fuente |---------- |**font-family**: monospace;|
|Alineacion de texto| ------------------ | **text-align:** center |
|Ancho de un elemento|------------------|**width**|
|Altura de un elemento|------------------ |**height**|
|Bordes de un elemento | ------------------|  **border-color**:green  **border-width**:10px ; **border-style**:solid;|
|Radio de un elemento|------------------|**border-radius:** 10px|
|Relleno de un elemento | ------------------ | **padding:** 10px 20px 10px 10px |
|Margen de un elemento | ------------------ | **margin:** 10px 20px 10px 10px |
|-------| ------------------ | ----------------------- |
|**Posicionamiento**| ------------------ | --- | ------------------ | --------------- |
|-------------| ------------------ | ---------------- |
|**Animaciones**| ------------------ | --- | ------------------ | --------------- |
|-------------| ------------------ | ---------------- |
|-------------| ------------------ | ---------------- |



----------------------------------------------------
# Conceptos fundamentales :


## Display :

- <a href='https://developer.mozilla.org/es/docs/Web/CSS/display'>https://developer.mozilla.org/es/docs/Web/CSS/display</a>

- La propiedad CSS display especifica si un elemento es tratado como **block or inline element** y el diseño usado por sus hijos, como **flow layout(Diseño de Flujo), grid(Cuadricula) o flex(Flexible)**. 

- Formalmente la propiedad display establece los tipos de **visualización interna y externa de un elemento**. La tipo externa establece la participacion de un elemento en flow layout; la tipo interna establece el layout(Diseño) de los hijos.

## Posicion relativa de un elemento : 

Cuando la posición de un elemento se establece a **relative**, te permite especificar como CSS lo moverá relativo a su posición actual dentro del flujo normal de la página. 

Se empareja con las propiedades de desplazamiento CSS de **left o right, y top o bottom.** 

Estas dicen cuántos pixeles, porcentajes, o ems se debe mover el elemento lejos de donde esté normalmente posicionado. 
~~~
  h2 {
    position :relative;
    top: 15px;
  }
~~~

**Cambiando la posición de un elemento a relative no lo quita del flujo normal; otros elementos a su alrededor aún se comportarán como si dicho elemento estuviera en su posición predeterminada.** 

Los desplazamientos CSS de top o bottom y left o right indican al navegador hasta que punto debe compensar un elemento en relación con el lugar donde se ubicara en el flujo normal del documento. 

Está compensando un elemento lejos de un punto dado, lo que aleja el elemento del lado al que se hace referencia (efectivamente, en la dirección opuesta). 

 Usando el desplazamiento top movió el h2 hacia abajo. Del mismo modo, usando un desplazamiento left mueve un elemento hacia la derecha. 


## Posicion Absoluta de un elemento :

La siguiente opción para la propiedad CSS position es **absolute**, que bloquea el elemento en su lugar en relación con su contenedor principal. 

A diferencia de la posición relative, esto **elimina el elemento del flujo normal del documento**, por lo que los elementos circundantes lo ignoran.

 Las propiedades de desplazamiento de CSS (superior o inferior e izquierda o derecha) se utilizan para ajustar la posición. 

Un matiz del posicionamiento absoluto es que estará bloqueado en relación con su antepasado posicionado más cercano.

**Si olvidas agregar una regla de posición al elemento principal, (esto generalmente se hace usando position: relative;), el navegador seguirá buscando en la jerarquía de elementos y, en última instancia tomará por defecto la etiqueta body.**


## Posicion fixed(fija) de un elemento :

El siguiente esquema de diseño que ofrece CSS es la posición **fixed**, que es un tipo de posicionamiento absoluto que bloquea un elemento relativo a la ventana del navegador.

 Similar al posicionamiento absoluto, se usa con las propiedades de desplazamiento CSS y también elimina el elemento del flujo normal del documento. 

Otros elementos ya no "se dan cuenta" de donde se coloca, lo que puede requerir algunos ajustes de diseño en otros lugares.

Una diferencia clave entre las posiciones fixed y absolute es que **un elemento con una posición fija (fixed) no se moverá cuando el usuario se desplace.**

## Elementos hacia la izquierda o hacia la derecha con la propiedad **float** :

La siguiente herramienta de posicionamiento en realidad no usa position, sino que establece la propiedad **float** de un elemento.

Los elementos flotantes se eliminan del flujo normal de un documento y **se empujan a left o right de su elemento padre contenedor.**

 Se usa comúnmente con la propiedad **width** para especificar cuanto espacio horizontal requiere el elemento flotante. 

 ## Posición de los elementos superpuestos con la propiedad **z-index** :

Cuando los elementos son posicionados para superponerse (**i.e. usando position: absolute | relative | fixed | sticky**), el elemento que viene después dentro del marcado HTML aparecerá, por defecto, encima de los otros elementos.

 Sin embargo, la propiedad z-index puede especificar el orden de cómo los elementos están apilados unos sobre otros. 

**Debe ser un entero (i.e. un número entero y no un decimal), y los elementos que mayor valor tengan en z-index serán movidos más arriba en la pila de elementos que aquellos con valores menores.**


## Centrar elementos horizontalmente:
Otra técnica de posicionamiento consiste en centrar un elemento de bloque horizontalmente. Una manera de hacer esto es que **margin tenga valor auto**.

Este método también funciona para imágenes. 

**Las imágenes son elementos en línea de forma predeterminada, pero se pueden cambiar a elementos de bloque cuando se establece la propiedad display en block.**




## Unidades de medida 

- Al usar pixeles para definir las dimensiones de los objetos y los estilos de fuente no solo estamos definiendo tamaños rígidos, sino que también estamos ignorando las configuraciones que cada usuario pueda tener en su navegador.

- Tenemos tres unidades de medida mejores para hacer nuestros diseños responsive : **em , % y rem** :

### **Trabajando con em** : 

- Un em, es básicamente el tamaño de una letra «M» (bien podría ser cualquier otra letra) del elemento al cual se esté aplicando esta medida. Es decir, si en elemento tiene aplicado un tamaño de  fuente de 16 pixeles, entonces **1em será igual a 16px** (los navegadores de manera predeterminada definen un font-size de 16px al elemento HTML, por lo tanto, por defecto 1em es igual a 16px).

- La unidad em es escalable y siempre depende de su elemento padre.

~~~
Body = 1em (16px)
Hijo = 1.3em (16px x 1.3 = 20.8px)
Nieto = 1.3em (20.8px x 1.3 = 27.04px)
~~~

- **Es recomendable usar la unidad de medida em para definir los tamaños de fuente, los altos de línea y también para elementos de diseño que no requieran ser muy exactos o que requieran una medida que tenga relación con el tamaño del texto**, como por ejemplo el margen entre párrafos, el relleno interior de los blockquotes, etc.

- También se puede aplicar a elementos generales del layout aunque no es muy recomendable, ya que **si eventualmente se cambia el tamaño de fuente de uno de ellos, se podría estropear el diseño**.

### **Trabajando con rem** :

- La unidad de medida rem es muy similar a em, con la única diferencia de que **no es escalable**, esto quiere decir que no depende del elemento padre, sino del elemento raíz del documento, el elemento HTML. Rem significa «Root Em«, o sea, es un em basado en la raíz.

- Esto significa que si el elemento HTML tiene un tamaño de fuente de 16px (como es por defecto), entonces 1rem, sería igual a 16px, y si queremos aplicar un tamaño basado en rem a cualquier elemento de la página, no importará cual sea el tamaño de fuente que tenga asociado ese elemento, ya que **1 rem siempre será igual a 16 pixeles a no ser que se modifique el elemento raíz**.

## Id de elementos :

Además de las clases, cada elemento HTML también puede tener un atributo id.

Existen varios beneficios de usar atributos de id: Puedes usar un id para dar estilo a un elemento específico . 

Los atributos id deben ser únicos. Los navegadores no verifican esta regla, pero es una buena práctica ampliamente aceptada. 

Sin embargo, un id no es reutilizable y solo debe aplicarse a un único elemento. 

Un id también tiene mayor especificidad (importancia) que una clase, así que si aplicas un id y una clase al mismo elemento y sus estilos se contradicen, se aplicarán los estilos del id.

## Herencia y sobreescitura de reglas : 

Ahora vamos comenzar de cero y hablaremos sobre la herencia CSS (en inglés: "CSS inheritance").

Toda página HTML tiene un elemento body.
Si escribimos reglas CSS para el body se aplicaran a todos los elementos visbles en la pagina .

~~~

 .pink-text {
    color: pink;
  }
  .blue-text{
    color:blue;
  }
</style>

<h1 class="pink-text blue-text">Hello World!</h1>
~~~

Lo importante es el orden de las declaraciones de class clases en la sección 
~~~
<style> 
~~~

La segunda declaración siempre tendrá prioridad sobre la primera. Debido a que .blue-text ha sido declarada en segundo lugar, sobrescribirá los atributos de .pink-text .

**No importa donde este declarado el atributo id siempre tendra precedencia sobre las clases .** 


Otra forma de sobreescribir CSS es con los **inline-styles**. 

~~~
<h1 id="orange-text" class="pink-text blue-text" style="color:white;">Hello World!</h1>
~~~

Existe una última forma de sobreescribir CSS. Este es el método más poderoso de todos. 

Pero antes de utilizarlo, consideremos por qué querrías sobreescribir una regla CSS.

En muchas situaciones usarás librerías de CSS. Estas librerías pueden sobreescribir accidentalmente tu propio código CSS. Entonces, cuando necesites asegurarte de que a un elemento se le aplique un código CSS específico, puedes usar **!important**.

~~~
  #orange-text {
    color: orange;
  }
  .pink-text {
    color: pink !important;
  }
  .blue-text {
    color: blue;
  }
~~~

## Selectores de Atributos : 

Existen otros selectores CSS que puedes utilizar para seleccionar grupos personalizados de elementos a los que quieras aplicar el mismo estilo. 

selector de atributos **[attr=value]** para aplicar estilo a las casillas de verificación (checkboxes).  

 Este selector busca estilos que tengan un valor de atributo específico. 
~~~
  [type='radio']{

    margin-top: 10px;
    margin-bottom:15px;

  }
~~~



## Variables en CSS : 

Las Variables CSS son una manera poderosa de modificar varias propiedades de estilos CSS a la vez, cambiando su valor en un único sitio. 

Para crear una variable CSS, solo tienes que darle un nombre que comience con dos guiones (--) y asignarle un valor, como se muestra a continuación: 

~~~
  .penguin {
    /
      --penguin-skin: gray;
    /
    position: relative;
    margin: auto;
    display: block;
    margin-top: 5%;
    width: 300px;
    height: 300px;
  }
~~~

Por ejemplo podemos hacer en cualquier clase que tengamos creada :
~~~ 
background-color : var (--penguin-skin); 
~~~

## Valores de respaldo : 

Cuando utilices tu variable como valor de una propiedad CSS, puedes adjuntar un valor de respaldo o "fallback", que será utilizado por el navegador si la variable dada no es válida.
 
Nota:   Este valor de respaldo no se utiliza para aumentar la compatibilidad con otras versiones de navegadores y no funcionará en navegadores IE (Internet Explorer). 

Más bien, se utiliza para que el navegador tenga un color para mostrar si no encuentra tu variable. 

~~~
    background: var(--pengiun-skin,black);
~~~


### Mejora la compatibilidad con navegadores por medio de configuraciones de respaldo o "browser fallbacks" 

Cuando trabajes con código CSS, posiblemente te enfrentarás en algún momento con problemas de compatibilidad con otros navegadores web. 

Por esta razón es importante proporcionar configuraciones de respaldo para otros navegadores o "browser fallbacks" para lidiar con posibles problemas de compatiblidad.

Cuando tu navegador analiza el código CSS de una página web, ignora cualquier propiedad que no reconozca o soporte. 
Por ejemplo, si utilizas una variable CSS para asignar un color de fondo en un sitio, Internet Explorer ignorará el color de fondo establecido porque no soporta el uso de variables CSS. En ese caso, el navegador utilizará cualquier valor que tenga establecido como valor de esa propiedad.

 Si no puede encontrar ningún otro valor establecido para esa propiedad en el código, se revertirá al valor por defecto de ese navegador, lo que habitualmente no será lo ideal.

Esto significa que si quieres proporcionar un valor de respaldo para el navegador, esto es tan sencillo como incluir otro valor más comúnmente soportado inmediatamente antes de tu declaración. 

De este modo, un navegador antiguo tendrá ún valor que sí pueda soportar, mientras que un navegador más nuevo interpretará cualquier declaración que incluyas más adelante en la cascada. 

~~~

<style>
  :root {
    --red-color: red;
  }
  .red-box {
    background: red;
    background: var(--red-color);
    height: 200px;
    width:200px;
  }
</style>
~~~

## Herencia de variables CSS : 

Cuando creas una variable, queda disponible para que la utilices dentro del selector en el que la hayas creado. 
Esa variable también estará disponible en cualquiera de los descendientes de ese selector. 

Esto ocurre porque las variables CSS son heredadas, al igual que las propiedades comunes.

Para hacer uso de la herencia, las variables CSS suelen ser definidas en el elemento **:root**.

**:root es un "pseudo-class selector"** (selector de pseudo-clase) que corresponde al elemento raíz o "root" del documento, que generalmente es el elemento html.

 Al crear tus variables en :root, estarán disponibles globalmente y se podrán acceder desde cualquier otro selector en la hoja de estilo.
 ~~~

<style>
  :root {
    --penguin-skin: gray;
    --penguin-belly: pink;
    --penguin-beak: orange;
  }
~~~

Cuando creas tus variables en :root, el valor de esa variable quedará establecido para toda la página.

Luego podrás sobreescribir estas variables, configurándolas de nuevo dentro de un elemento específico.

## Pseudoclases :

<a href='https://developer.mozilla.org/es/docs/Web/CSS/Pseudo-classes'>https://developer.mozilla.org/es/docs/Web/CSS/Pseudo-classes</a>

Una **pseudo-clase** es una palabra clave que se puede agregar a los selectores para seleccionar un estado específico de un elemento. 

~~~
<style>
  a {
    color: #000;
  }
  a:hover{
    color:blue;
  }
~~~
## Formas complejas usando CSS y HTML , pseudoelementos:

**pseudo-elements ::before y ::after :**

 **::before** crea un pseudo-elemento que es el primer hijo del elemento seleccionado; 

**::after** crea un pseudo-elemento que es el último hijo del elemento seleccionado. 

Para que los pseudo-elements ::before y ::after funcionen correctamente, deben tener una propiedad **content** definida.

Esta propiedad generalmente se usa para agregar cosas como una foto o texto al elemento seleccionado. 
Cuando se utilizan los pseudo-elements ::before y ::after para crear formas, la propiedad content sigue siendo necesaria, pero se establece en una cadena vacía.  
~~~
  .heart::before {
    content: "";
    background-color: pink;
    border-radius: 50%;
    position: absolute;
    width: 50px;
    height: 50px;
    top: -25px;
    left: 0px;
  }
~~~


## Padding (relleno) de un elemento :

Hay tres propiedades importantes que controlan el espacio que rodea cada elemento HTML: **padding** (relleno), **border** (borde) y **margin** (margen). 

El padding o relleno de un elemento controla la cantidad de espacio entre su contenido y su border. 

## Margin (margen) de un elemento :

El margin (margen) de un elemento controla la cantidad de espacio entre su border y los elementos que lo rodean. 

Si estableces el margin de un elemento a un valor negativo, el elemento crecerá de tamaño. 

CSS te permite controlar por separado el margin de los cuatro lados individuales de un elemento por medio de las propiedades **margin-top, margin-right, margin-bottom y margin-left** . (lo mismo sucede con el padding).





------------------------------------------
## Otros conceptos Utiles:

### Degradado de fuentes : 

Hay varias fuentes por defecto disponibles en todos los navegadores. 

Estas familias de fuentes genéricas incluyen **monospace, serif y sans-serif**.

Cuando una fuente no está disponible en el sistema, puedes indicarle al navegador que "degrade" a otra fuente alternativa.

Por ejemplo, si quieres que un elemento utilice la fuente Helvetica pero que degrade a la fuente sans-serif en caso que Helvetica no esté disponible, se especifica de la siguiente manera:
~~~
 h2 {
    font-family: Lobster, monospace;
  }
~~~

### Clockwise-notation :
~~~
.blue-box {
    background-color: blue;
    color: #fff;
    padding: 40px 20px 20px 40px;
  }

~~~

### Indicacion de Colores : 

En CSS, podemos representar colores utilizando 6 dígitos hexadecimales, dos para los componentes de rojo (R), verde (G) y azul (B).

 Por ejemplo, **#000000** corresponde al color negro, y también es el valor más bajo posible.

https://htmlcolorcodes.com/es/

En código hexadecimal se utilizan 6 dígitos hexadecimales para representar los colores, dos para el componente rojo (R), verde (G) y azul (B). 

Por ejemplo, el naranja es rojo puro mezclado con algo de verde y nada de azul. En hex code, esto se traduce como #FFA500.

El dígito 0 es el número más bajo en hex code, y representa la ausencia total de color.

El dígito F es el número más alto en hex code, y representa el brillo máximo.
Otra forma de representar colores en CSS es utilizar valores RGB. 

~~~
 body {
    background-color: rgb(0,255,0);
  }
~~~

### Colores complementarios y terciarios: 
El círculo cromático es una herramienta útil para observar cómo los colores están relacionados entre sí - es un círculo donde los tonos similares están juntos y los tonos diferentes alejados.

Cuando dos colores opuestos están juntos en el círculo, se los llama **colores complementarios.**
Se caracterizan porque si se combinan, se cancelan así mismos y crean un color gris. Sin embargo, al ubicarse juntos, estos colores parecen más brillantes y producen un contraste visual fuerte.

Los monitores y las pantallas crean diferentes colores al combinar cantidades de luz roja, verde y azul. Esto se conoce como modelo aditivo de color **RGB** en la teoría de moderna de color. **Rojo (R), verde (G) y azul (B)** «por sus siglas en inglés» son **colores primarios**.


 **Al combinar dos colores primarios tendremos los colores secundarios cian (G + B), magenta (R + B) y amarillo (R + G).**  
 Estos colores secundarios son el complemento del color primario no utilizado en su creación y están frente a ese color primario en el círculo cromático. Por ejemplo, el magenta está compuesto de rojo y azul y es el complemento del verde.

Los **colores terciarios** se forman al **combinar dos colores primarios con uno de sus vecinos de color secundario**. 
Por ejemplo, entre el modelo de color RGB, rojo (primario) y amarillo (secundario) forman naranja (terciario). Esto añade seis colores a un círculo cromático simple para un total de doce.
Hay varios métodos para seleccionar colores diferentes que resultan de una combinación armoniosa en diseño.

Un ejemplo que puede usar colores terciarios es el esquema de color complementario dividido. 

Este esquema comienza con un color base, luego lo empareja con los dos colores que están adyacentes a su complemento. Los tres colores proporcionan un fuerte contraste visual en un diseño, pero son más sutiles que utilizar dos colores complementarios.
En la práctica, usualmente se usa uno de los colores como dominante y los complementarios se usan para atraer atención visual a cierto contenido dentro de la página. 

### Matiz de un color (tono , saturacion y brillo):
Los colores tienen varias características tales como el **matiz, la saturación y la ligereza**.

 CSS3 introdujo la propiedad **hsl()** como una forma alternativa de elegir un color indicando directamente estas características.

Se suele pensar que Hue es el "color". 

Si imaginas un espectro de colores con un rojo en la izquierda que se torna verde en el medio y azul en la derecha, el tono es donde cabe un color a lo largo de esta línea. 

En hsl(), el tono usa un concepto de círculo cromático en lugar del espectro, donde el ángulo del color en el círculo se da como un valor entre 0 y 360.

**Saturation** es la cantidad de gris en un color. Un color totalmente saturado no tiene gris y un color mínimamente saturado es casi completamente gris. Esto se da como un porcentaje con 100% de saturación.

**Lightness** es la cantidad de blanco en un color. Un porcentaje se da desde 0% (negro) hasta 100% (blanco), donde 50% es el color normal.

### Ajuste de tono :

La opción **hsl()** en CSS también hace que sencillo ajustar el tono de un color. 
Mezclar blanco con un tono puro crea un tinte de ese color y añadir negro hará una sombra. 

De forma alternativa, un tono se produce al añadir gris o tintes y sombras. 

Recuerda que la 's' y 'l' del hsl() representan saturación y ligereza, respectivamente. El porcentaje de saturación cambia la cantidad de gris y el porcentaje de luz determina el porcentaje de blanco o de negro que hay en el color. 

Esto es útil cuando se tiene un tono base que se quiere, pero necesita variaciones diferentes del mismo. 
Todos los elementos tienen un **background-color** predeterminado de **transparent**

-------------------------------------------------------------












## Texto

### Resaltar texto : 

Para poner el texto en negrita, puedes usar la etiqueta **strong**. Esto se usa a menudo para llamar la atención sobre el texto y simbolizar que es importante. 
Con la etiqueta strong, el navegador aplica el CSS de **font-weight: bold**; al elemento. 

~~~
   <p>Google was founded by Larry Page and Sergey Brin while they were Ph.D. students at <strong>Stanford University</strong>.</p>
~~~

### Subrayar texto : 

Para subrayar texto, puedes usar la etiqueta u. (se trata de evitar su uso )
Esto se utiliza a menudo para indicar que una sección del texto es importante, o algo que hay que recordar.
 Con la etiqueta u, el navegador aplica el CSS de text-decoration: underline; al elemento. 

### Texto en cursiva : 

Para enfatizar el texto, puedes usar la etiqueta **em**.

 Esto muestra el texto en cursiva, ya que el navegador aplica el CSS de **font-style: italic**; al elemento. 
 ~~~
 <p><em>Google was founded by Larry Page and Sergey Brin while they were <u>Ph.D. students</u> at <strong>Stanford University</strong>.</em></p>
~~~

### Tachar texto :

Para tachar el texto, que es cuando una línea horizontal atraviesa los caracteres, puede usar la etiqueta **s**. 
Muestra que una sección de texto ya no es válida. 

Con la etiqueta s, el navegador aplica el CSS de **text-decoration: line-through**; al elemento. 

~~~
 <h4><s>Google</s> Alphabet</h4>
~~~
<h4><s>Google</s> Alphabet</h4>

### Lineas Horizontales :

Puedes usar la etiqueta **hr** para agregar una línea horizontal a través del ancho de su elemento contenedor. Esto se puede usar para definir un cambio de tema o para separar grupos de contenido visualmente. 




### Tamaño de un elemento de encabezado frente a un elemento de párrafo :

El tamaño de fuente de las etiquetas de encabezado (h1 a h6) generalmente debe ser mayor que el tamaño de fuente de las etiquetas de párrafos.
 Esto hace que sea más sencillo para que el usuario entienda visualmente el diseño y el nivel de importancia de cada elemento en la página.

 Se utiliza la propiedad **font-size** para ajustar el tamaño del texto en un elemento. 

 --------------------------------

 ### Agregar box-shadow a un elemento tipo tarjeta:
La propiedad **box-shadow** aplica una o más sombras a un elemento.
La propiedad box-shadow toma valores para

**offset-x (qué tan lejos extender la sombra horizontalmente desde el elemento),**

**offset-y (qué tan lejos extender la sombra verticalmente desde el elemento),**

**blur-radius,spread-radius y color, en ese orden.**

Los valores blur-radius y spread-radius son opcionales.

Se pueden crear múltiples box-shadows usando comas para separar las propiedades de cada elemento box-shadow.
~~~
#thumbnail {
  box-shadow: 0 10px 20px rgba(0,0,0,0.19) , 0 6px 6px rgba(0,0,0,0.23);
}
~~~
### Opacidad de un elemento 

La propiedad **opacity** en CSS se usa para ajustar la opacidad o, por el contrario, la transparencia de un elemento. 

### Transformar texto : 

La propiedad **text-transform** en CSS se utiliza para cambiar la apariencia del texto. 

Es una forma conveniente de asegurarse de que el texto en una página web aparezca de manera consistente, sin tener que cambiar el contenido del texto de los elementos HTML reales. 

~~~
lowercase
"Transformame"

uppercase
"TRANSFORMAME"

capitalize
"Transformame"

initial
Usa el valor predeterminado
inherit
Utiliza el valor text-transform del elemento principal

none
Predeterminado: Usa el texto original
~~~

### Grosor de caracteres : 

La propiedad **font-weight** establece que tan gruesos o delgados son los caracteres en una sección de texto. 

### Altura de cada linea de texto : 

CSS ofrece la propiedad **line-height** para cambiar la altura de cada línea en un bloque de texto.
 Como sugiere el nombre, cambia la cantidad de espacio vertical que recibe cada línea de texto.


-----------------------------------------

. 


### Gradiente lineal de CSS gradual :
La aplicación de un color en elementos HTML no se limita a un tono plano.
 CSS proporciona la capacidad de usar transiciones de color, también conocidas como degradados, en los elementos. 
Esto se accede a través de la función **linear-gradient()** de la propiedad **background**.  

El primer argumento especifica la dirección desde la que comienza la transición de color, se puede establecer como un grado, donde 90deg hace un gradiente horizontal (de izquierda a derecha) y 45deg hace un gradiente diagonal (de abajo a izquierda hacia arriba a la derecha).


Los siguientes argumentos especifican el orden de los colores utilizados en el degradado. 

~~~
    background :linear-gradient(35deg,#CCFFFF,#FFCCCC);
~~~

### Degradado lineal CSS para crear un elemento rayado 

La función **repeating-linear-gradient()** es muy similar a **linear-gradient()** con la principal diferencia de que repite el patrón de degradado especificado. 

**repeating-linear-gradient()** acepta una variedad de valores .

El valor del ángulo es la dirección del gradiente. Las paradas de color son como valores de ancho que marcan donde tiene lugar una transición, y se dan con un porcentaje o un número de píxeles. 

Si cada dos valores de parada de color son del mismo color, la mezcla no es visible porque está entre el mismo color, seguido de una dura transición hacia el siguiente color, así que terminas con rayas. 

~~~
  background: repeating-linear-gradient(
      45deg,
      yellow 0px,
      yellow 40px,
      black 40px,
      black 80px
    );
~~~

### Textura agregando un patrón sutil como imagen de fondo :

Una forma de agregar textura e interés a un fondo y hacer que se destaque más es agregar un patrón sutil. La clave está en el balance, dado que no querrás que el fondo destaque demasiado y quite atención al primer plano. 

La **propiedad background acepta la función url()** para enlazar una imagen de la textura o patrón elegido. El enlace es cubierto entre comillas dentro del paréntesis. 
~~~
<style>
  body {
      background:url(https://cdn-media-1.freecodecamp.org/imgr/MJAkxbh.png)
  }
</style>
~~~

### Cambiar el tamaño de un elemento con interactividad:

Para cambiar la escala de un elemento, CSS tiene la propiedad **transform**, junto con su función **scale()**.  

~~~
  #ball2 {
    left: 65%;
    transform:scale(1.5)
  }
~~~

La propiedad transform tiene una variedad de funciones que el permiten escalar, mover, rotar, sesgar, etc., sus elementos.

 **Cuando se usa con pseudo-classes como :hover que especifican un cierto estado de un elemento, la propiedad transform puede agregar fácilmente interactividad a sus elementos.**

 ~~~ 
  div:hover{
    transform: scale(1.1);
  }
~~~


### Inclinar elementos:

La siguiente función de la propiedad **transform** es **skewX()**, que inclinar el elemento seleccionado a lo largo de su eje X (horizontal). 

~~~
  #bottom {
    background-color: blue;
    transform : skewX(24deg);
  }
~~~



------------------------------------


## Propiedades de CSS @keyframes y animación  :
Para animar un elemento, necesitas conocer las **propiedades de animación y la regla @keyframes**.

**Las propiedades de animación controlan como debe comportarse la animación y la regla @keyframes controla lo que sucede durante esa animación.**

 Hay ocho propiedades de animación en total. 

**animation-name** establece el nombre de la animación, que luego es utilizada por @keyframes para decirle a CSS que reglas van con que animaciones. 

**animation-duration** establece el tiempo de la animación. 

**@keyframes** es como especificar exactamente lo que sucede dentro de la animación durante la duración.

 **Esto se hace dando propiedades CSS para "marcos" específicos durante la animación, con porcentajes que van del 0% al 100%.** 
 
 Si comparas esto con una película, las propiedades de CSS de 0% es como se muestra el elemento en la escena inicial. Las propiedades de CSS con 100% es como aparece el elemento al final, justo antes de que rueden los créditos.

 Luego, CSS aplica la magia para hacer la transición del elemento durante la duración dada para representar la escena.  
 ~~~
  #rect {
    animation-name: rainbow;
    animation-duration: 4s;
  }
  @keyframes rainbow {
    0% {
      background-color: blue;
    }
    100%{
      background-color:yellow;
      
    }
~~~

Para que el color de un button cambie con hover por ejemplo :
~~~
  button:hover {
    animation-name: background-color;
    animation-duration: 500ms;
  }
  @keyframes background-color {
    100%{
      background-color: #4791d0;
    }
  }
~~~


Podemos establecerle un estilo al elemento luego de la animacion  estableciendo la propiedad **animation-fill-mode** en **forwards**. El animation-fill-mode especifica el estilo aplicado a un elemento cuando la animación ha finalizado. 


## Movimientos usando animacion CSS :

**Cuando los elementos tienen una position, como fixed o relative, las propiedades de desplazamiento CSS right, left, top y bottom se pueden usar en las reglas de animación para crear movimiento.** 

~~~
#rect {
    animation-name: rainbow;
    animation-duration: 4s;
  }

  @keyframes rainbow {
    0% {
      background-color: blue;
      top: 0px;
      left: 0px;

    }
    50% {
      background-color: green;
      top: 50px;
      left: 25px;

    }
    100% {
      background-color: yellow;
      top: 0px;
      left: -25px;

    }
  }
~~~

Tambien se puede crear una dirección visual desvaneciendo un elemento de izquierda a derecha usando la propiedad opacity 



Otra propiedad de animación es la **animation-iteration-count** la cual te permite controlar **cuántas veces te gustaría hacer un bucle a través de la animación**. 

~~~
animation-name: bounce;
    animation-duration: 1s;
    animation-iteration-count: infinite;
~~~

esto creara una animacion infinita llamada “bounce”.


## Cambia la duración de las animaciones con palabras clave :

En las animaciones CSS, la propiedad **animation-timing-function**controla qué tan rápido un elemento animado cambia sobre la duración total de la animación.

 Si la animación es un carro moviéndose de un punto A a un punto B en un tiempo establecido (tu animation-duration), la animation-timing-function dicta cómo el carro acelera y desacelera durante el transcurso en marcha. 

Existe un número de palabras clave predefinidas disponibles para las opciones populares. Por ejemplo, el valor por defecto es **ease**, que empieza despacio, acelera en el medio y luego reduce la velocidad de nuevo al final. 
Otras opciones incluye **ease-out**, que es rápida al inicio y luego reduce la velocidad, **ease-in**, que es lenta al inicio y luego acelera al final, o **linear**, que aplica una velocidad constante a lo largo de la animación. 


## Curvas de Bezier : 
 CSS ofrece una opción distinta a las palabras clave que proporciona un control aún más fino sobre cómo se desarrolla la animación, a través del uso de curvas Bezier.
En las animaciones CSS, las curvas Bezier se utilizan con la función cubic-bezier.

 La forma de la curva representa cómo se desarrolla la animación.
 La curva vive en un sistema de coordenadas de 1 a 1. El eje X de este sistema de coordenadas es la duración de la animación (piénsa en una escala de tiempo), y el eje Y es el cambio en la animación.

La **función cubic-bezier** consta de cuatro puntos principales que se encuentran en esta cuadrícula de 1 por 1: p0, p1, p2 y p3. p0 y p3 están configurados para ti: son los puntos inicial y final que siempre se encuentran respectivamente en el origen (0, 0) y (1, 1).

 Establece los valores x e y para los otros dos puntos, y donde los coloca en la cuadrícula determina la forma de la curva para la animación que debe seguir. 
 
 Esto se hace en CSS declarando los valores x e y de los puntos "anchor" p1 y p2 de la siguiente forma:
 ~~~
 (x1, y1, x2, y2) 

  #ball1 {
    left: 27%;
    animation-timing-function: 
cubic-bezier(0.25,0.25,0.75,0.75);
  }
~~~

La siguiente curva cúbica de Bezier simula el movimiento de rebotes:
~~~
cubic-bezier(0.3, 0.4, 0.5, 1.6);
~~~
Observa que el valor de y2 es mayor que 1. Aunque la curva cúbica de Bezier se mapea en un sistema de coordenadas 1 por 1, y solo puede aceptar valores x de 0 a 1, el valor y se puede establecer en números mayores que uno. 

Esto da como resultado un movimiento de rebote que es ideal para simular la pelota rebotando.



# Responsividad 

## Media-query (@)  : 

Las variables CSS pueden simplificar la forma en que utilizas "media queries" (consultas sobre el tipo de dispositivo donde se muestra el documento HTML).

Por ejemplo, cuando la pantalla es más pequeña o más grande que el breakpoint de tu media query, puedes cambiar el valor de una variable, y su estilo se aplicará dondequiera que la utilices.
~~~
<style>
  :root {
    --penguin-size: 300px;
    --penguin-skin: gray;
    --penguin-belly: white;
    --penguin-beak: orange;
  }

  @media (max-width: 350px) {
    :root {
      /
      --penguin-size: 200px;
      --penguin-skin:black;
      /
    }
~~~

**Es una especie de estilo dinamico**

La media siempre sobreescribe la root pero cuando pasa la cota max-width: 350px  deja de sobreescribir .



