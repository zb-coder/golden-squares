// Do..while loop

// let loop variable;
// do{
//     statement 
// }
// while (condition)

let i = 0;

do {
    if (i % 2 !== 0) console.log(i);
    i++
}
while (i <= 5);


// do while loops are always executed at least once,
// even if the condition evaluates to false.
// This is because the condition is evaluated last, so
// what is in do is executed.