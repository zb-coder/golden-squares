// In Javascript we have to categories of types:
// 1 - Value types (primitives) 
    // e.g. Number, string, boolean, symbol, undefined, null
// 2 - Reference types (Objects)
    // e.g. Objects, Functions, Arrays

let x = 10;
let y = x;

x = 20;

console.log(x) // => 20
console.log(y) // => 10

// They are independent

let a = { value: 10};
let b = a;

a.value = 20;

console.log(a); //=> { value: 20 }
console.log(b); //=> { value: 20 }

// When we use an object, that object is not stored in the variable.
// The object is stored somewhere else in the memory, and the address 
// of that memory location is stored inside that memory variable.

// Primatives are copied by their value
// Objects are copied by their reference

let number = 10;

function increase(number) {
    number++;
}

increase(number)
console.log(number) //=> 10

// Primitives are copied by their value
// When we call increase and pass the number variable, its value is copied into this parameter that is
// local in this function. So the number variable in the function is completely independent to the other number
// that was first declared.

let obj = { value: 10 };

function increase(obj) {
    obj.value++;
}

increase(obj)
console.log(obj) //=> { value: 11 }

// We get 11 because when we call increase and pass an object through it e.g. increase(obj)
// this object is passed by its reference. So the local parameter will point to the ssme object.