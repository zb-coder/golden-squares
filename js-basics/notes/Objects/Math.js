// Math is a built in object

console.log(Math.random())
// => This will give you a random number each time you call it
// e.g. 0.4157951352859939

function getRandom() {
    return Math.random()
}

console.log(getRandom())
// This does the same thing as above, it give you a different random
// number each time you call it.

function getRandomNumber(min, max) {
    return Math.random() * (max - min) + min;
}

console.log(getRandomNumber(5, 10))
// This gives you a random number between 5 and 10.
// e.g. 9.43163892241037

console.log(Math.round(1.9))
// this rounds the number up to the nearest whole number
// e.g. 2

console.log(Math.max(1, 2, 3, 4, 5))
// this gives the largest number in the list
// e.g. 5

console.log(Math.min(1, 2, 3, 4, 5))
// this gives the smallest number in the list
// e.g. 1