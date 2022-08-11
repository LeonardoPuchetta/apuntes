# Responsive 

## Puntos de interrupción basado en contenido.

La opción ideal para decidir los puntos de interrupción se basa en el contenido del sitio. Este método permite simplemente agregar puntos de interrupción donde el contenido necesita ajustarse al diseño. Esto hará que las Media Queries sean mucho más simples y manejables.

Podemos trabajar con varios puntos de interrupcion tanto para la pantalla creciendo como para la pantalla decreciendo : 

~~~
// Responsive down size (variables para puntos de corte hacia abajo )
//son variables que contienen tamanos 

$media-breackpoint-down-xs : 413.98px ; 
$media-breackpoint-down-sm : 573.98px ; 
$media-breackpoint-down-md : 767.98px ; 
$media-breackpoint-down-lg : 991.98px ; 
$media-breackpoint-down-xl : 1199.98px ; 

// Responsive up size (variables para puntos de corte hacia arriba )

$media-breackpoint-up-xs : 320px ; 
$media-breackpoint-up-sm : 576px ; 
$media-breackpoint-up-md : 768px ; 
$media-breackpoint-up-lg : 992px ; 
$media-breackpoint-up-xl : 1200px ;
~~~

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

  @media (max-width: $media-breackpoint-up-xs) {
    :root {
      /
      --penguin-size: 200px;
      --penguin-skin:black;
      /
    }
~~~

**Es una especie de estilo dinamico**

La media siempre sobreescribe la root pero cuando pasa la cota max-width: 350px  deja de sobreescribir .

