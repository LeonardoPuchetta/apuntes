# Clases y constructores en Javascript

## Clases en Javascript

Las clases de javascript, introducidas en ECMAScript 2015, son una mejora sintáctica sobre la herencia basada en prototipos de JavaScript. La sintaxis de las clases no introduce un nuevo modelo de herencia orientada a objetos en JavaScript. Las clases de JavaScript proveen una sintaxis mucho más clara y simple para crear objetos y lidiar con la herencia.

### **Declaración de clases**

Una manera de definir una clase es mediante una declaración de clase. Para declarar una clase, se utiliza la palabra reservada class y un nombre para la clase "Rectangulo".
~~~
class Rectangulo {
  constructor(alto, ancho) {
    this.alto = alto;
    this.ancho = ancho;
  }
}
~~~

### **Expresiones de clases**

Una expresión de clase es otra manera de definir una clase. Las expresiones de clase pueden ser **nombradas o anónimas**. El nombre dado a la expresión de clase nombrada es local dentro del cuerpo de la misma.
~~~
// Anonima
let Rectangulo = class {
  constructor(alto, ancho) {
    this.alto = alto;
    this.ancho = ancho;
  }
};

console.log(Rectangulo.name);
// output: "Rectangulo"

// Nombrada
let Rectangulo = class Rectangulo2 {
  constructor(alto, ancho) {
    this.alto = alto;
    this.ancho = ancho;
  }
};
console.log(Rectangulo.name);
// output: "Rectangulo2"
~~~

### **Cuerpo de la clase y definición de métodos**

- ### **Constructor**

**El método constructor es un método especial para crear e inicializar un objeto creado con una clase**. Solo puede haber un método especial con el nombre "constructor" en una clase. Si esta contiene mas de una ocurrencia del método constructor, se arrojará un Error SyntaxError

Un constructor puede usar la palabra reservada **super para llamar al constructor de una superclase**.

~~~
let Rectangulo = class {
  constructor(alto, ancho) {
    this.alto = alto;
    this.ancho = ancho;
  }
};
~~~

- ### **Métodos estáticos**

La palabra clave **static** define un método estático para una clase. **Los métodos estáticos son llamados sin instanciar su clase y no pueden ser llamados mediante una instancia de clase**. Los métodos estáticos son a menudo usados para crear funciones de utilidad para una aplicación.
~~~
class Punto {
  constructor ( x , y ){
    this.x = x;
    this.y = y;
  }

  static distancia ( a , b) {
    const dx = a.x - b.x;
    const dy = a.y - b.y;

    return Math.sqrt ( dx * dx + dy * dy );
  }
}

const p1 = new Punto(5, 5);
const p2 = new Punto(10, 10);

console.log (Punto.distancia(p1, p2)); // 7.0710678118654755
~~~

### **Subclases con extends**
La palabra clave extends es usada en declaraciones de clase o expresiones de clase para **crear una clase hija**.
~~~
class Animal {
  constructor(nombre) {
    this.nombre = nombre;
  }

  hablar() {
    console.log(this.nombre + ' hace un ruido.');
  }
}

class Perro extends Animal {
  hablar() {
    console.log(this.nombre + ' ladra.');
  }
}
~~~

### **Llamadas a súperclases con super**

La palabra clave **super** es usada para llamar funciones del objeto padre.
~~~
class Gato {
  constructor(nombre) {
    this.nombre = nombre;
  }

  hablar() {
    console.log(this.nombre + ' hace ruido.');
  }
}

class Leon extends Gato {
  hablar() {
    super.hablar();
    console.log(this.nombre + ' maulla.');
  }
}
~~~

