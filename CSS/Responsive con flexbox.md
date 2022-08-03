# Responsive con flexbox 

## Puntos de interrupción basado en contenido.

La opción ideal para decidir los puntos de interrupción se basa en el contenido del sitio. Este método permite simplemente agregar puntos de interrupción donde el contenido necesita ajustarse al diseño. Esto hará que las Media Queries sean mucho más simples y manejables.

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

