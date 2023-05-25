// break and contiue
// These are key words

let i = 0;
while (i <= 10) {
    console.log(i);
    i++;
}
// gives us 0 - 10 in a list

// With the break key word we jump out of a loop

let t = 0;
while (t <= 10) {
    if (t === 5) break;
    
    console.log(t);
    t++;
}
// => 0 1 2 3 4

// With the continue key word we jump to the next iteration
let n = 0;
while (n <= 10) {
    if (n % 2 === 0){
        n++;
        continue;
    }
    console.log(n);
    n++;
}
// => 1 3 5 7 9