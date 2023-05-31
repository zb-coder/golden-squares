// A function that makes the number provided of rows of stars
//  starting from one star and going up to the number given of stars

function showStars(rows) {
    for (let row = 0; row <= rows; row ++){
        let pattern = '';
        for (i = 0; i < row; i++) 
            pattern += '*'
            console.log(pattern)
    }
}

//Here we have a nested loop - a loop within another loop.

showStars(10);