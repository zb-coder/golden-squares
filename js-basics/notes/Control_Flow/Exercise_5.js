// Make a function which has a list of numbers up to the limit
// Next to every even number it should say 'EVEN'
// Next to every odd number it should say 'Odd'
// e.g. 0 Even
// e.g. 1 Odd

function showNumbers(limit){
    for (let i = 0; i <= limit; i ++) {
        const message = (i % 2 === 0) ? 'EVEN' : 'ODD'
        console.log(i, message);
    }
}

showNumbers(10);