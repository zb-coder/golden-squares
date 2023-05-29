// Falsy (false) categories:
// undefined
// null
// 0
// false
// ''
//NaN (not a number)

function countTruthy(array) {
    const onlyNumbers = (array.filter(Number))
    console.log(onlyNumbers.length)
}

const array = [0, 1, 2, null, undefined, '']

countTruthy(array)