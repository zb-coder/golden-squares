// The result of a logical operator is not always true or a false.
// The result depends on the operance we have.

false || true //=> true
false || 'Mosh' //=> 'Mosh' 
// ^ This is a truthy result as it doesn't fall into any of the falsy category below.
false || 1 //=> 1
// ^ This is a truthy result as it doesn't fall into any of the falsy category below.
false || 1 || 2 // => 1
// ^ This is a truthy result as it doesn't fall into any of the falsy category below.
// ^ We get 1 because in the logical OR operator, it keeps looking until it gets an operator that is true or truthy, 1 is truthy so it returns 1 and stops its search.
// ^ It does not matter what other operands we have past the truthy result, they are completely ignored once a truthy result is found, this is called short-circuiting.

// Falsy (false) categories:
// undefined
// null
// 0
// false
// ''
//NaN (not a number)

// Anything that is not Falsy => Truthy

// Real world example of where this is used.
// An application where the user has to pick a colour or,
// we will use a default colour.

let userColour = NaN;
let defaultColour = 'blue';
let currentColour = userColour || defaultColour;

console.log(currentColour); // => result is blue because the userColour is falsy and defaultColour is truthy