# Objetos en Javascript 

Los objetos son similares a los arreglos (arrays), excepto que en lugar de usar índices para acceder y modificar sus datos, accedes a los datos en objetos a través de propiedades (properties).

Los objetos son útiles para almacenar datos de forma estructurada y pueden representar objetos del mundo real, como un gato.

Por ejemplo, aquí hay un objeto de gato:
~~~
const cat = {
  "name": "Whiskers",
  "legs": 4,
  "tails": 1,
  "enemies": ["Water", "Dogs"]
};
~~~
La primer manera de acceder a propiedades de un objeto es a traves de notacion de puntos .

La segunda manera de acceder a las propiedades de un objeto es con la notación de corchetes ([]). Si la propiedad del objeto al que intentas acceder tiene un espacio en el nombre, necesitarás usar notación de corchetes.

### Acceder a propiedades de objetos con variables
Otro uso de la notación de corchetes en objetos es acceder a una propiedad que está almacenada como el valor de una variable. **Esto puede ser muy útil para iterar a través de las propiedades de un objeto o para acceder a una tabla de búsqueda.**

Aquí hay un ejemplo del uso de una variable para acceder a una propiedad:
~~~
const dogs = {
  Fido: "Mutt",
  Hunter: "Doberman",
  Snoopie: "Beagle"
};

const myDog = "Hunter";
const myBreed = dogs[myDog];
console.log(myBreed);
~~~
La cadena Doberman se mostrará en la consola.

Otra forma de usar este concepto es **cuando el nombre de la propiedad se recoge dinámicamente durante la ejecución del programa**, de la siguiente manera:
~~~
const someObj = {
  propName: "John"
};

function propPrefix(str) {
  const s = "prop";
  return s + str;
}

const someProp = propPrefix("Name");
console.log(someObj[someProp]);
~~~

someProp tendrá una cadena con un valor propName y la cadena John se mostrará en la consola.

**Ten en cuenta que no usamos comillas alrededor del nombre de la variable cuando la usamos para acceder a la propiedad porque utilizamos el valor de la variable, no el nombre**.

### Elimina propiedades en un objeto de JavaScript

También podemos eliminar propiedades de objetos de esta forma:
~~~
delete ourDog.bark;
~~~

### Usar objetos para hacer búsquedas
**Los objetos pueden ser considerados como un almacenamiento clave/valor, como un diccionario. Si tienes datos tabulares, puedes utilizar un objeto para hacer una búsqueda de valores en lugar de una declaración switch o encadenar if/else**. Esto es de mucha utilidad cuando se sabe que los datos de entrada están limitados a un cierto rango.

Aquí hay un ejemplo de una simple búsqueda de alfabeto inverso:
~~~
const alpha = {
  1:"Z",
  2:"Y",
  3:"X",
  4:"W",
  ...
  24:"C",
  25:"B",
  26:"A"
};

alpha[2];
alpha[24];

const value = 2;
alpha[value];
~~~

alpha[2] es la cadena Y, alpha[24] es la cadena C, y alpha[value] es la cadena Y.

###  Verifica las propiedades de un objeto
A veces es útil comprobar si existe o no la propiedad de un objeto dado. Podemos utilizar el método **.hasOwnProperty(propname)** para determinar si un objeto tiene una propiedad con ese nombre. **.hasOwnProperty() devuelve true o false si se encuentra la propiedad o no**.
~~~
const myObj = {
  top: "hat",
  bottom: "pants"
};

myObj.hasOwnProperty("top");
myObj.hasOwnProperty("middle");
~~~
El primer hasOwnProperty devuelve true, mientras que el segundo devuelve false.


## Ejercicio coleccion de discos :
Colección de discos

Se te da un objeto literal que representa una parte de tu colección de álbumes musicales. Cada álbum tiene un número de id único como clave y varias otras propiedades. No todos los álbumes tienen una información completa.

Empiezas con una función updateRecords la cual toma un objeto literal, records, que contiene el álbum musical de la colección, un id, prop (como artist o tracks), y value. Completa la función usando las reglas siguientes para modificar el objeto pasado a la función.

- Tu función siempre debe devolver el objeto de colección de registros completo.
- Si prop no es tracks y value no es una cadena vacía, actualiza o establece la propiedad prop del album a value.
- Si prop es tracks pero el álbum no tiene una propiedad tracks, crea un arreglo vacío y agrégale value a él.
- Si prop es tracks y value no es una cadena vacía, agrega value al final del arreglo de tracks existentes del álbum.
- Si value es una cadena vacía, elimina esa propiedad prop del álbum.

### Resolucion :
~~~
// Configuración
const recordCollection = {
  2548: {
    albumTitle: 'Slippery When Wet',
    artist: 'Bon Jovi',
    tracks: ['Let It Rock', 'You Give Love a Bad Name']
  },
  2468: {
    albumTitle: '1999',
    artist: 'Prince',
    tracks: ['1999', 'Little Red Corvette']
  },
  1245: {
    artist: 'Robert Palmer',
    tracks: []
  },
  5439: {
    albumTitle: 'ABBA Gold'
  }
};

// Cambia solo el código debajo de esta línea
function updateRecords(records, id, prop, value) {

if (prop !== "tracks" && value !== ""){
    let obj = records[id] ;
    obj[prop] = value ;
          } 

if (prop == "tracks" && !records[id].hasOwnProperty("tracks")){
      let canciones = [];
      canciones.push(value);
      //console.log(canciones)
      let disco = records[id];
      disco[prop] = canciones 
              } else {
                if (prop == "tracks" && value !== ""&& records[id].hasOwnProperty("tracks")){
    let objeto = records[id];
    let array = objeto["tracks"];
    array.push(value);
  } 
              }

  if (value == ""){
    let disco = records[id];
      delete disco[prop]
  }

  return records;
}

//updateRecords(recordCollection, 5439, 'artist', 'ABBA');
console.log(updateRecords(recordCollection, 5439, 'artist', 'ABBA'))

console.log(updateRecords(recordCollection, 5439, 'tracks', 'occcc'))
console.log(updateRecords(recordCollection, 5439, 'tracks', ''))
~~~
---------------------------------------------


### Ejercicio busqueda de perfiles :

<a href = 'https://www.freecodecamp.org/espanol/learn/javascript-algorithms-and-data-structures/basic-javascript/profile-lookup'>Link De freeCodeCamp</a>
~~~
const contacts = [
  {
    firstName: "Akira",
    lastName: "Laine",
    number: "0543236543",
    likes: ["Pizza", "Coding", "Brownie Points"],
  },
  {
    firstName: "Harry",
    lastName: "Potter",
    number: "0994372684",
    likes: ["Hogwarts", "Magic", "Hagrid"],
  },
  {
    firstName: "Sherlock",
    lastName: "Holmes",
    number: "0487345643",
    likes: ["Intriguing Cases", "Violin"],
  },
  {
    firstName: "Kristian",
    lastName: "Vos",
    number: "unknown",
    likes: ["JavaScript", "Gaming", "Foxes"],
  },
];

function lookUpProfile(name, prop) {
  // Cambia solo el código debajo de esta línea
  let i = 0 ;
  let terminado = false;
  do {
      if (contacts[i].firstName == name){
        let element = contacts[i];
        if (element[prop]!==undefined){
           terminado = true;
           return element[prop]
        } else {
          return "No such property"
        }
        
        
      }
      i++;
      if (i>contacts.length-1){
        return "No such contact"
      }


  } while (!terminado)
  }
console.log(lookUpProfile("Kristian", "likes"));
~~~