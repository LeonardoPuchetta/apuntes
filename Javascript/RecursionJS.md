## **Recursion** 

La recursión es el concepto que una función puede expresarse en términos de sí misma. Para ayudar a comprender esto, comienza pensando en la siguiente tarea: multiplica los primeros n elementos de un arreglo para crear el producto de esos elementos. Usando un bucle for, puedes hacer esto:
~~~
  function multiply(arr, n) {
    let product = 1;
    for (let i = 0; i < n; i++) {
      product *= arr[i];
    }
    return product;
  }
~~~

Sin embargo, nota que **multiply(arr, n) == multiply(arr, n - 1) * arr[n - 1]**. 

Esto significa que puedes reescribir multiply en términos de sí misma y que nunca necesites hacer uso de un bucle.
~~~
  function multiply(arr, n) {
    if (n <= 0) {
      return 1;
    } else {
      return multiply(arr, n - 1) * arr[n - 1];
    }
  }
~~~

La versión recursiva de multiply se desglosa así. En el caso base, donde n <= 0, devuelve 1. Para valores más grandes de n, se llama a sí misma, pero con n - 1. Esa llamada de función se evalúa de la misma manera, llamando a multiply otra vez hasta que n <= 0. En este punto, todas las funciones pueden devolver y la multiply original devuelve la respuesta.

**Nota: Las funciones recursivas deben tener un caso base cuando devuelven sin tener que llamar a la función de nuevo (en este ejemplo, cuando n <= 0), de lo contrario nunca podrán terminar de ejecutarse.**

### **Suma de los primeros n elementos de un arreglo mediante recursion** :

~~~
function sum(arr, n) {
   if (n<=0){
     return 0
   } else {
     return sum(arr,n-1) + arr[n-1]
   }
}
~~~
### **Recursión para crear una cuenta regresiva**
~~~
function countdown(n){
  if (n<1){
    return []
  } else {
      const countArray = countdown(n-1);
      countArray.unshift(n);
      return countArray
  }
  
}
console.log(countdown(4))  
~~~
la llamada a console devuelve [ 4, 3, 2, 1 ]

### **Recursión para crear un rango de números**

~~~
function rangeOfNumbers(startNum, endNum) {
  if (startNum == endNum){
    return [startNum];
  } else {
    const intervalArray = rangeOfNumbers(startNum,endNum -1);
    intervalArray.push(endNum);
    return intervalArray
  }
 
};

console.log(rangeOfNumbers(1,5))
~~~
la llamada a console devuelve [ 1, 2, 3, 4, 5 ]

