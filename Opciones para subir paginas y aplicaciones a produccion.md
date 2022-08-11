


## Subiendo aplicacion con client en React :

- (1) Base de datos en Mongo Atlas
 
- (2) Servidor a Heroku 
- (3) Cliente a Heroku

### **(1) Base de datos en Mongo Atlas**

<a href='https://www.udemy.com/course/web-personal-mern-full-stack-mongodb-express-react-node/learn/lecture/17831156#overview'>https://www.udemy.com/course/web-personal-mern-full-stack-mongodb-express-react-node/learn/lecture/17831156#overview</a>

- Creamos un nuevo cluster llamado "Portfolio"
- En Data base access creamos un nuevo usuario para la base con un password : **71UXGPgj4z3MoiBm** y le damos permisos de escritura y lectura dela base de datos . 
- En Network access podemos darle acceso a nuestra base de datos a un servidor alojado en un IP especifica , en nuestro cas osera a traves de un IP dinamica por lo tanto el acceso no sera restringido . 

- Configuramos el **server** para conectarse a la base de datos : 

En el **index.js** reemplazamos  : 

~~~
mongoose.connect(`mongodb://${IP_SERVER}:${PORT_DB}/portfolio`, {useNewUrlParser: true , useUnifiedTopology: true },(err,res)=>{......................
~~~

por la url de mongo atlas :
~~~
mongoose.connect(`mongodb+srv://Leonardo:<password>@portfolio.w1bvo2t.mongodb.net/?retryWrites=true&w=majority`, {useNewUrlParser: true , useUnifiedTopology: true },(err,res)=>{
~~~

###  **(2) Servidor a Heroku** 

<a href='https://www.udemy.com/course/web-personal-mern-full-stack-mongodb-express-react-node/learn/lecture/17831160#overview'>https://www.udemy.com/course/web-personal-mern-full-stack-mongodb-express-react-node/learn/lecture/17831160#overview</a>

- Instalamos los servicios de heroku para windows 

- En el **server** ejecutamos **heroku login** esto abre una pagina donde hacemos login 
- Luego creamos la aplicacion en heroku : **heroku apps:create portfolio2022-react**

- En el package.json del server realizamos los siguientes cambios :
~~~
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1",
    "start": "node index.js",
    "dev": "nodemon index.js"
  },
  ya que nodemon no se puede ejecutar en el servidor 
~~~
- En la raiz del server creamos **procfile** con el contenido :
~~~
web: node index.js
~~~
este comando se ejecutara al subir la aplicacion a heroku 

- **Deploy :**

- Debemos tener una carpeta git en la raiz del server 

~~~
git init 
~~~

- Tenemos que hacer un push de nuestra carpeta de git al heroku , por lo tanto agregamos la rama de heroku :

~~~
heroku git:remote -a portfolio2022-react

y luego :

 git add .
 git commit -am "desplegando v0.0.1"
 git push heroku master
~~~

- **Prueba desde el client** : 

- **client -> src -> api -> config.js :** cambiamos la direccion del server 

~~~
cambiamos : 
export const basePath = "http://localhost:3977/api";

por

export const basePath = "https://portfolio2022-react.herokuapp.com/api";

~~~


### **(3) Cliente React a Heroku**

<a href='https://www.youtube.com/watch?v=gItqzShex5M'>https://www.youtube.com/watch?v=gItqzShex5M</a>

<a href='https://blog.heroku.com/deploying-react-with-zero-configuration'>https://blog.heroku.com/deploying-react-with-zero-configuration</a>

- Creamos nuevo repositorio git en el client 
~~~
git init
~~~
- Creamos una rama para subir a heroku

~~~
heroku create -b https://github.com/mars/create-react-app-buildpack.git
~~~
- Subimos la rama 
~~~
git add .
git commit -m "react-create-app on Heroku"
git push heroku master
heroku open
~~~

- **Deploy exitoso!!!** Aguante Heroku!!!

-  **https://fathomless-island-94910.herokuapp.com/**

-Nota : con **git remote remove heroku** eliminamos el repositorio de heroku de la carpeta cliente

## Cambios en el cliente y nuevo deploy 

- Realizamos los cambios pertinentes y guardamos 
- Luego realizamos el proceso anterior : 
- Subimos la rama 
~~~
git add .
git commit -m "react-create-app on Heroku"
git push heroku master
heroku open
~~~


 




















