let x = 2 + 3 * 4;

console.log(x); // => 12;
// ^ This is 12 because multiplication has precedence over addition,
// ^ so, first you must multiply before you add the results.

// You can change the precedence of an expression by putting parenthesis around them. e.g.
let y = (2 + 3) * 4;

console.log(y); // => 20