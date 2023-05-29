// Falsy (false) categories:
// undefined
// null
// 0
// false
// ''
//NaN (not a number)


// Make a function that returns the number of truthy values in an array

// Solution 1:

// function countTruthy(array) {
//     const onlyNumbers = (array.filter(Number))
//     console.log(onlyNumbers.length)
// }

const array = [0, 1, 2, null, undefined, '']

// countTruthy(array)

// Solution 2:

function countTruthy(array) {
    let count = 0;
    for (let value of array)
        if(value) //This will only count truthy results
            count ++;
    return count;
}

console.log(countTruthy(array))