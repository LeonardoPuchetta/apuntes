# Github usando Visual Studio Code 

1. Creamos un proyecto de React  por ejemplo en Visual . 

2. Inicializamos repositorio **Local** desde nuestra carpeta de proyecto esto crea la carpeta **.git** en la carpeta de proyecto.

3.  Nos conectamos a nuestra cuenta Github en **Accounts** .

**En este punto solo estamos conectados a la cuenta Github no al repositorio remoto .** 

Desde la pestaña de **Source Control** podemos ver todos los cambios que hemos hecho. Tenemos diferentes denominaciones para el estado de los documentos :

## Estados de los ficheros

- **U** , untracked (sin seguimiento)
 - **M** , modified (modificado). 
 - **D** , deleted (eliminado).
 - **T** ,Tracked (Bajo seguimiento).
 - **S** ,Staged (Preparado para confirmación).

 ## Áreas de trabajo

 El modo de trabajo estándar de GIT se basa en que los archivos pasan por varios lugares antes de validarse en el repositorio. Estos lugares son:

El **directorio de trabajo o el área de working**, que es el directorio local de trabajo, donde creamos archivos, y realizamos todas las modificaciones. Cuando se realiza una modificación de un archivo pasa al área de working.

El **área de staging o preparación**, es un estado intermedio en el que se prepara a los archivos para luego pasar al área de **commit**. Por tanto, los cambios de los archivos del área de working, antes de validarse y pasar al repositorio local o remoto, pasarán por el área de preparación.

El **repositorio local**, este repositorio lo creamos con GIT, y es donde se guardan los archivos con las modificaciones y todas las versiones por las que ha pasado. Normalmente pasaremos los archivos del área de preparación, al área de **commit**.

El **repositorio remoto**, este repositorio estará fuera del equipo local, que, en el caso de colaborar con más usuarios.

## Archivos rastreados y sin rastrear

Cada archivo de tu repositorio puede tener dos estados: **rastreados y sin rastrear**. Los archivos **rastreados (tracked files)** son todos los que estaban en la última instantánea del proyecto; pueden ser archivos sin modificar, modificados o preparados. 

Los archivos sin rastrear son todos los demás – cualquier otro archivo en tu directorio de trabajo que no estaba en tu última instantánea y que no está en el área de preparación (staging area)-. Cuando clonas por primera vez un repositorio, todos tus archivos están rastreados y sin modificar.

Mientras editas archivos, Git los ve como modificados. Luego preparas estos archivos modificados (staged) y finalmente confirmas todos los cambios preparados (commit).

## Stage, commit, push y pull

4. Para hacer **“commit”** de los ficheros. En primer lugar, incluiremos los ficheros a los que queremos hacer **stage** (preparar los ficheros para confirmación y seguimiento) pulsando en “+” en cada uno de los ficheros o en “todos”.Cuando realizamos esta accion los ficheros seleccionados cambian a **A**.

5. **Commit :**  A continuación, si pulsamos en el icono de tres puntos nos sale un desplegable con diferentes opciones para hacer **push (subir al servidor)**, **pull (bajar del servidor)**, **commit..**. Por supuesto, cuando hagamos **«commit»** nos pedirá el mensaje identificativo de dicho commit. **Y si todavia no estamos conectados al repositorio remoto deberemos hacer un login en nuestro repositorio Github.**

     Para realizar el commit debemos configurar desde terminal nuestro usuario y correo git :

    ~~~ 
    PS C:\Users\risso\Desktop\Proyectos\ToDo_React>   git config --global user.email "leonardopuchetta21@gmail.com"
    PS C:\Users\risso\Desktop\Proyectos\ToDo_React>  git config --global user.name "LeoNardoPuchett"
    ~~~

    Una vez hecho esto ejecutamos **"commit"**.

6. Para hacer **push** a nuestro repositorio remoto debemos configurar el repositorio destino :
 **Source Control --> Views and more Actions** vamos a **Remote --> Add Remote** y pegamos la **Url** del repositorio remoto , ademas debemos darle un identificacion a dicho repositorio. 

 $ // continuar documento aqui  !

 ---------------------------------------

 # Ramas en Git

 Las ramas son caminos que puede tomar el desarrollo de un software, algo que ocurre naturalmente para resolver problemas o crear nuevas funcionalidades. En la práctica permiten que nuestro proyecto pueda tener diversos estados y que los desarrolladores sean capaces de pasar de uno a otro de una manera ágil.

 El comando **git branch** es el que usaremos principalmente **para trabajar con la creación de ramas, borrado de ramas y demás**. 
 
 Sin embargo, no es el único comando para la operativa que veremos , ya que existen otros subcomandos de Git útiles y necesarios para trabajar con ramas, como **checkout para moverse entre ramas o merge para fusionar ramas.**

~~~
  **git branch -av**  : visualizar ramas y commits ( y en que rama nos encontramos )
~~~

Las ramas de un repositorio local pueden ser distintas de las ramas de un repositorio remoto. Por ejemplo, cuando clonas un repositorio de GitHub generalmente estás clonando únicamente la rama master y no todas las ramas que se hayan creado a lo largo del tiempo.

 Otro ejemplo es cuando creas una rama en tu repositorio local. En este caso la rama la tendrás simplemente en tu proyecto local y no se subirá al repositorio remoto hasta que no lo especifiques. 

 ## La rama Master 

 Cuando inicializamos un proyecto con Git automáticamente nos encontramos en una rama a la que se denomina **"master"**(tambien se puede llamar **"main"**).

 ## Crear una rama nueva

 El procedimiento para crear una nueva rama es bien simple. Usando el comando branch, seguido del nombre de la rama que queremos crear.
~~~
 **git branch** ramaNueva 
 **git show-branch** nos muestra todas las ramas del proyecto con sus commits realizados.
~~~

 ## Pasar de una rama a otra

 ara moverse entre ramas usamos el comando **"git checkout"** seguido del nombre de la rama que queremos que sea la activa.

~~~
**git checkout** ramaNueva
~~~

esta sencilla operación tiene mucha potencia, porque nos cambiará automáticamente todos los archivos de nuestro proyecto, los de todas las carpetas, para que tengan el contenido en el que se encuentren en la correspondiente rama.

De momento en nuestro ejemplo las dos ramas tenían exactamente el mismo contenido, pero ahora podríamos empezar a hacer cambios en el proyecto experimental y sus correspondientes commit y entonces los archivos tendrán códigos diferentes, de modo que puedas ver que al pasar de una rama a otra hay cambios en los archivos.

El comando checkout tiene la posibilidad de permitirte **crear una rama nueva y moverte a ella en un único paso**. Para crear una nueva rama y situarte sobre ella tendrás que darle un nombre y usar el parámetro -b.

~~~
**git checkout -b** otrarama
~~~

## Fusionar ramas

A medida que crees ramas y cambies el estado del las carpetas o archivos tu proyecto empezará a divergir de una rama a otra. Llegará el momento en el que te interese fusionar ramas para poder **incorporar el trabajo realizado a la rama master**.

El proceso de fusionado se conoce como **"merge"** y puede llegar a ser muy simple o más complejo si se encuentran cambios que Git no pueda procesar de manera automática. 

Git para procesar los merge usa un antecesor común y comprueba los cambios que se han introducido al proyecto desde entonces, combinando el código de ambas ramas.

~~~
git merge rama_uno  -m  'Esto es un merge con master con mensaje'
~~~

Esta accion fusiona las ramas pero **no elimina** la **rama_uno**.

## Fusionar los cambios de master en la rama en desarrollo

Durante tu trabajo en el desarrollo del proyecto gestionado con Git también puede ser normal que se vayan haciendo cambios en la rama master, o en otras ramas en desarrollo, y quieras traerlos para tu rama actual. 

Por ejemplo, la rama experimental está tardando varios días o semanas en completarse y mientras tanto han agregado nuevas features que quieras que esté disponibles también en la rama experimental.

Entonces seguramente querrás traerte los cambios de la rama master. Para ello, estando en la rama experimental, puedes lanzar el siguiente comando

~~~
git merge master -m 'Un mensaje del merge de master en el branch experimental'
~~~

ahora tu rama está actualizada con todos los cambios en master.

## Subir una rama al repositorio remoto (Github o similares)

La operativa de publicar una rama en remoto la haces mediante el comando push, indicando la opción "-u" y el nombre de la rama que deseas subir. Por ejemplo de esta manera:
~~~
git push -u origin rama_uno
~~~
Así estamos haciendo un push, empujando hacia origin (que es el nombre que se suele dar al repositorio remoto), la rama con nombre "rama_uno".

Por cierto, si subimos el proyecto a Github podremos ver también un diagrama de las ramas que hemos ido creando y fusionando a master, en la sección **Graps / Network**.

## Borrado de la rama en local

Esto lo conseguimos con el comando git branch, solamente que ahora usamos la opción "-d" para indicar que esa rama queremos borrarla.

~~~
git branch -d rama_a_borrar
~~~

Sin embargo, puede que esta acción no nos funcione porque hayamos hecho cambios que no se hayan salvado en el repositorio remoto, o no se hayan fusionado con otras ramas. En el caso que queramos forzar el borrado de la rama, para eliminarla independientemente de si se ha hecho el push o el merge, tendrás que usar la opción "-D".

**Para poder borrar una rama debemos estar parados en otra rama distinta .**

~~~
git branch -D rama_a_borrar
~~~

Debes prestar especial atención a esta opción "-D", ya que al eliminar de este modo pueden haber cambios que ya no se puedan recuperar. Como puedes apreciar, es bastante fácil de confundir con "-d", opción más segura, ya que no permite borrado de ramas en situaciones donde se pueda perder código.

## Eliminar una rama en remoto

Si la rama que queremos eliminar está en el repositorio remoto, la operativa es un poco diferente. Tenemos que hacer un push, indicando la opción --delete, seguida de la rama que se desea borrar.

~~~
git push origin --delete rama_a_borrar
~~~

## Descargar una rama de remoto
A veces ocurre que se generan ramas en remoto, por ejemplo cuando han sido creadas por otros usuarios y subidas al hosting de repositorios, como GitHub o similares, y necesitamos acceder a ellas en local para verificar los cambios o continuar el trabajo. 

En principio esas ramas en remoto creadas por otros usuarios no están disponibles para nosotros en local, pero las podemos descargar.

El proceso para obtener una rama del repositorio remoto es bien sencillo. Lo conseguimos con el comando fetch.
~~~
git fetch
~~~

Lanzado ese comando hemos podido descargar la rama git de remoto. Ahora podemos acceder a ella con los comandos que ya conoces.
~~~
git checkout mi_rama_remota_descargada
~~~






















