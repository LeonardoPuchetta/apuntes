# CSS flexbox 


Colocar la **propiedad CSS display**: flex; en un elemento te permite usar otras propiedades flex para construir una página responsiva.

Agregando **display: flex a un elemento lo convierte en un contenedor flexible**. Esto permite alinear cualquier elemento secundario de ese elemento en filas o columnas.

Cuando describimos a flexbox como unidimensional destacamos el hecho que flexbox maneja el layout en una sola dimensión a la vez — ya sea como fila o como columna. Esto contrasta con el modelo bidimensional del Grid Layout de CSS, el cual controla columnas y filas a la vez.

|**CSS Flexbox**|||
|----------------|------------------|--------------|
| Definiendo un contenedor flex | ---------|**display :** flex |
|Eje principal|------------------|**flex direction :** row ,row-reverse,column,column-reverse|
|Colocar elementos en varias lineas |------------------|**flex wrap :** wrap , nowrap |
|Ejes y colocacion|------------------|**flex-flow :** row wrap ; column nowrap|
|**Propiedades de items flex**|||
|Dimension basica de un elemento |------------------|**flex-basis :** 3rem|
|Tamaño de los elementos cuando el contenedor primario se expande|------------------|**flex-grow :** 1 ; 2 ; 3 |
|Tamaño de los elementos cuando el contenedor primario se contrae|------------------|**flex-shrink :** 1 ; 2 ; 3|
|**Alineación, justificación y distribución del espacio libre entre ítems**|||
|Alinear elementos sobre eje cruzado|------------------|**align-items :** stretch; flex-start; flex-end; center|
|Alinear elementos sobre eje principal|------------------|**justify-content :** space-evenly ; flex-start ; flex-end ; center ; space-around ; space-between
|
|Alinear elementos individualmente|------------------|**align-self :** auto ;stretch ; center;flex-start ; flex-end ; baseline ; initial ; inherit
|----------------|------------------|--------------|


## Ejes : 

- Cuando trabajamos con flexbox necesitamos pensar en términos de dos ejes — el eje principal y el eje cruzado. El eje principal está definido por la propiedad **flex-direction**, y el eje cruzado es perpendicular a este.
 
 - La creación de una fila alineara los elementos secundarios a lo largo de una linea horizontal(**flex-direction : row**), y la creación de una columna alineara los elementos secundarios a lo largo de una linea vertical(**flex-direction : column**).

 - El **eje cruzado** siempre sera perpendicular el eje principal

 - Otras opciones para **flex-direction son row-reverse y column-reverse.** 

 - El valor predeterminado para la propiedad flex-direction es row.

 ## Valores por defecto al declarar un contenedor flex :

 Todos los ítems flex contenidos se comportarán de la siguiente manera.

~~~
    - Los ítems se despliegan sobre una fila (la propiedad flex-direction por defecto es row).
    - Los ítems empiezan desde el margen inicial sobre el eje principal.
    - Los ítems no se ajustan en la dimensión principal, pero se pueden contraer.
    - Los ítems se ajustarán para llenar el tamaño del eje cruzado.
    - La propiedad flex-basis es definida como auto.
    - La propiedad flex-wrap es definida como nowrap.
~~~

## Contenedores multilinea con **flex-wrap :**

- Si bien flexbox es un modelo unidimensional, es posible lograr que nuestros ítems flex sean repartidos en varías líneas. Haciendo esto, se deberá considerar cada línea como un nuevo contenedor flex. Cualquier distribución del espacio solo sucederá dentro de esa línea, sin referenciar las líneas colaterales.

- Para lograr repartirse en varias líneas añada la propiedad **flex-wrap con el valor wrap**. Cuando los ítems sean demasiados para desplegarlos en una línea, serán repartidos en la línea siguiente.

## Distribucion del espacio disponible entre los items flex : 

- Si tenemos tres ítems con un ancho de 100 pixeles en un contenedor de 500 pixeles de ancho, entonces el espacio que se necesita para colocar nuestros ítems es de 300 pixeles. Esto deja 200 pixeles de espacio disponible. Si no cambiamos los valores iniciales entonces flexbox colocará ese espacio después del último ítem.

- Si en cambio quisiéramos que los ítems crecieran para llenar ese espacio, entonces necesitaremos un método para distribuir el espacio sobrante entre los ítems. Es justo lo que harán las propiedades flex que aplicaremos a dichos ítems.

- ### **flex-basis** 
- Con flex-basis se define el tamaño de un ítem en términos del espacio que deja como espacio disponible. El valor inicial de esta propiedad es auto — en este caso el navegador revisa si los ítems definen un tamaño. **Si los ítems no tiene un tamaño entonces el tamaño de su contenido es usado como flex-basis**. Y por eso, apenas declarado display: flex en el padre a fin de crear ítems flex, todos estos ítems se ubicaron en una sola fila y tomaron solo el espacio necesario para desplegar su contenido.

- <a href='https://www.paradigmadigital.com/dev/diferencia-flex-basis-width/'>https://www.paradigmadigital.com/dev/diferencia-flex-basis-width/</a>

- ### **flex-grow** 

- Con la propiedad flex-grow definida como un entero positivo, **los ítems flex pueden crecer en el eje principal a partir de flex-basis**. Esto hará que el ítem se ajuste y tome todo el espacio disponible del eje, o una proporción del espacio disponible si otro ítem también puede crecer.

- Podemos usar flex-grow apropiadamente para distribuir el espacio en proporciones. Si otorgamos al primer ítem un valor flex-grow de 2 y a los otros un valor de 1, entonces 2 partes serán dadas al primer ítem  


- ### **flex-shrink** 

- Así como la propiedad flex-grow se encarga de añadir espacio sobre el eje principal, **la propiedad flex-shrink controla como se contrae**. Si no contamos con suficiente espacio en el contenedor para colocar los ítems y flex-shrink posee un valor entero positivo, el ítem puede contraerse a partir de flex-basis. Así como podemos asignar diferentes valores de flex-grow con el fin que un ítem se expanda más rápido que otros — un ítem con un valor más alto de flex-shrink se contraerá más rápido que sus hermanos que poseen valores menores.

## Alineación, justificación y distribución del espacio libre entre ítems


 - ### Alinear elementos mediante la propiedad **justify-content :**

 - Algunas veces los elementos flexibles dentro de un contenedor flexible no llenan todo el espacio del contenedor. Es común querer indicarle al CSS cómo alinear y espaciar los elementos flexibles de una determinada manera. Afortunadamente, la propiedad **justify-content** tiene varias opciones para hacer esto.

  - La **dirección en la que están dispuestos los elementos flexibles se llama el eje principal**. Para una fila, esta es una línea horizontal que recorta cada elemento. Y para una columna, el eje principal es una línea vertical a través de los elementos.

 -  Hay varias opciones para espaciar los elementos flexibles a lo largo de la línea que representa el eje principal. Uno de los más utilizados es **justify-content: center**;, el cual alinea hacia el centro todos los elementos flexibles dentro del contenedor flexible.
  
   Otras opciones incluyen:

- **flex-start**: alinea los elementos con el inicio del contenedor flex. Para una fila, esto empuja los elementos a la izquierda del contenedor. Para una columna, esto empuja los elementos a la parte superior del contenedor.**Esta es la alineación predeterminada si no se especifica ningún tipo de justify-content**.

- **flex-end**: alinea los elementos con el final del contenedor flex. Para una fila, esto empuja los elementos a la derecha del contenedor. Para una columna, esto empuja los elementos a la parte inferior del contenedor.

- **space-between**: alinea los elementos en el centro del eje principal, con un espacio extra entre los elementos. Los primeros y últimos elementos son empujados hasta el borde del contenedor flexible. Por ejemplo, en una fila el primer elemento está en el lado izquierdo del contenedor, el último elemento está en el lado derecho del contenedor, luego el espacio restante se distribuye uniformemente entre los demás elementos.

- **space-around**: similar a space-between pero los primeros y últimos elementos no están fijados en los bordes del contenedor, el espacio se distribuye alrededor de todos los elementos con la mitad de un espacio en ambos extremos del contenedor flexible.

- **space-evenly**: Distribuye el espacio de manera uniforme entre los elementos flexibles con un espacio completo en ambos extremos del contenedor flexible

- ###  Propiedad **align-items**

- Los contenedores flexibles también tienen un eje transversal que es el opuesto al eje principal. Para las filas, el eje transversal es vertical y para las columnas, el eje transversal es horizontal.

- CSS ofrece la propiedad **align-items para alinear elementos flexibles a lo largo del eje transversal**. Para una fila, le indica al CSS como empujar los elementos en toda la fila hacia arriba o hacia abajo dentro del contenedor. Y para una columna, como empujar todos los elementos hacia la izquierda o hacia la derecha dentro del contenedor.

Los diferentes valores disponibles para align-items incluyen:

- **flex-start**: alinea los elementos con el inicio del contenedor flexible. Para las filas, esto alinea los elementos a la parte superior del contenedor. Para las columnas, esto alinea los elementos a la parte izquierda del contenedor.

- **flex-end**: alinea los elementos con el final del contenedor flexible. Para las filas, esto alinea los elementos a la parte inferior del contenedor. Para las columnas, esto alinea los elementos a la parte derecha del contenedor.

- **center**: alinea los elementos hacia el centro. Para las filas, esto alinea los elementos verticalmente (igual espacio por encima y por debajo de los elementos). Para columnas, esto las alinea horizontalmente (igual espacio a la izquierda y a la derecha de los elementos).

- **stretch**: estira los elementos para llenar el contenedor flexible. Por ejemplo, los elementos de filas son estirados para llenar el contenedor flexible de arriba hacia abajo. Este es el valor predeterminado si no se especifica ningún tipo de align-items.

- **baseline**: alinea los elementos con sus líneas base. Una línea base es un concepto de texto, piensa en ella como la línea en la que se sitúan las letras.

### Propiedad **align-self**

- La última propiedad para elementos flexibles es **align-self**. Esta propiedad te permite ajustar la alineación de cada elemento individualmente, en lugar de ajustarlos todos a la vez.

 - **Esto es útil ya que otras técnicas comunes de ajuste usan las propiedades CSS float, clear, y vertical-align, las cuales no funcionan en elementos flexibles**.

- align-self acepta los mismos valores que align-items y reemplazará cualquier valor establecido por la propiedad align-items.
### Propiedad abreviada **flex**

- Hay un atajo disponible para establecer varias propiedades flex a la vez. Las propiedades flex-grow, flex-shrink, y flex-basis pueden establecerse utilizando la propiedad flex.

~~~
Por ejemplo: 

flex: 1 0 10px; 

establecerá las propiedades del elemento en flex-grow: 1;, flex-shrink: 0;, y flex-basis: 10px;.
~~~
- La configuración predeterminada de la propiedad es flex: 0 1 auto;.

### Propiedad **order** para reorganizar los elementos

- La propiedad order se utiliza para indicarle a CSS el orden en que aparecen los elementos flexibles en el contenedor flex. 

- Por defecto, los elementos aparecerán en el mismo orden que vienen en el HTML de origen. La propiedad toma números como valores, y se pueden usar números negativos.



