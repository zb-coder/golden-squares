// An application that swaps the result of two variables
// a becomes blue and b becomes red
let a = 'red';
let b = 'blue';

let c = a;
a = b;
b = c;

console.log(a); //=> 'blue'
console.log(b); //=> 'red'