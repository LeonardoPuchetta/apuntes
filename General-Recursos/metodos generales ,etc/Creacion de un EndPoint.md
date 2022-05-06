# Creacion de un EndPoint 

## Trabajo  a nivel del **backend** (server) .

https://es.stackoverflow.com/questions/51758/qu%C3%A9-es-un-entry-point-y-un-end-point/51764 (explicacion de un entrypoint y un endpoint)

Utilizamos la librería de **express** : 

**server → routers → user.js** :	
~~~
const express = require('express');

// importacion del controlador 
const UserController = require('../controllers/user') ; 

// variable para generar otra ruta 
const api = express.Router();

// cuando hacemos post en /sign-up se ejecuta UserController.signUp
api.post ('/sign-up' , UserController.signUp);

// cuando hacemos post en /sign-in se ejecuta UserController.signIn
api.post ('/sign-in' , UserController.signIn);

// cuando hacemos get en /users se ejecuta UserController.signIn
api.get('/users' , UserController.getUsers);

//exportamos la funcionalidad 
module.exports = api;

~~~
El objeto **api** tiene distintos **metodos o peticiones : POST , GET , DELETE , COPY ,PUT , etc** .

Necesita un **path** y **hacer referencia a una funcionalidad del objeto UserController** (el objeto del controlador )en este caso signIn , signUp , etc ya configurada .


### Controlador 
~~~
// importacion del controlador 
const UserController = require('../controllers/user') ; 
~~~

El **modelo de controlador** se define mediante la  librería de **mongoose** :

**server → models → user.js** :	

~~~
const mongoose = require('mongoose') ; 
const Schema = mongoose.Schema ; 

const UserSchema =new Schema({   // aca va el modelo de usuario 
    name : String ,
    lastname : String , 
    email : {
        type: String ,
        unique: true ,    
    },
    password : String ,
    role : String,
    active: Boolean
});

//exportacion del modelo
module.exports = mongoose.model ("User", UserSchema) ; 
~~~



Realizamos las pruebas mediante el **POSTMAN** 

**server → controllers → user.js** :

Aqui quedan definidas las funcionalidades a asociar a cada ruta :

~~~
// importacion del modelo 
const User = require ('../models/user') ;

function signIn(req, res){.....}
function signUp (req , res ){.....}
function getUsers(req , res){.....}

module.exports = {
    signUp,
    signIn,
    getUsers
};
~~~

## Trabajo a nivel del frontend (client)

**client → src → api → user.js** : 

Por ejemplo para el caso de **getUsers ( )** creada en el **backend** tendremos la correspondiente **getUserApi ( )**en el **frontend** : 

~~~
export function getUserApi (token) {
    //debe comprobar el token del usuario para devolver lista 

    //construccion de la url mediante la cual se ejecuta la funcionalidad 
    const url = `${basePath}/${apiVersion}/users`;
    //

parametros del Endpoint que vamos a enviar 

    const params = {                                              // <<PARAMETROS DE PETICION>>
        method: 'GET',                                             //  METODO
        //el parametro que le pasamos a la funcion en forma de JSON    ,  CUERPO 
        headers: {
            "Content-type":"application/json",  
            Authorization : token ,
        }
    };

     // retornamos un fetch() o sea una peticion asincrona
    return fetch (url ,params)
                .then (response => {
                    return response.json()
                })
                .then (result => {
                    return result ; 
                })
                .catch(err=> {
                    return err.message
                }

                )
}


~~~














### Las tareas principales son : 

**1 . Construccion de Endpoint o url** :

~~~
const url = `${basePath}/${apiVersion}/users`;
~~~

**2 . Configuracion de los params del endpoint o parametros de la peticion**  : 

~~~
const params = {     // <<PARAMETROS DE PETICION>>
        method: 'GET',     //  METODO
        //el parametro que le pasamos a la funcion en forma de JSON    ,  CUERPO 
        headers: {
            "Content-type":"application/json",  
            Authorization : token ,
        }
    };
~~~

**3 . El fetch o peticion asincrona** :

~~~
 return fetch (url ,params)
                .then (response => {
                    return response.json()
                })
                .then (result => {
                    return result ; 
                })
                .catch(err=> {
                    return err.message
                }

                )
}
~~~


















