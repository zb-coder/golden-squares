// Loops
// Differnt loops in JavaScript:
// 1) For loops
// 2) While loops
// 3) Do...while loops
// 4) For...in loops
// 5) For...of loops

// All these loops do the same thing, repeat an action a number 
// of times but there is a difference in how they start and end.


// for loop

// for(initialExpression; conditon; incrementExpression{
//  statement
// }

for (let i = 0; i < 5; i++) {
    console.log('Hello World', i);
}
// => prints Hello World 5 times

// i is the loop variable, the initial expression will execute
// for as long as the condition is true.

for (let i = 0; i < 5; i++) {
    if (i % 2 !== 0)
    console.log('Hello World', i);
}

// This only prints odd numbers up to 5

for (let i = 5; i >= 1; i--) {
    if (i % 2 !== 0)
    console.log('Hello World', i);
}

// This only prints odd numbers down from 5, in the reverse order to the previous