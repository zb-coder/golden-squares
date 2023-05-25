//for..in loop
// We use this to iterate over the properties of an object or
// elements in an array.

// There are 2 ways we can access the properties of an object.
// 1 - Dot notation
// person.name

// 2 - Bracket notation
// person['name']

// example of object:

const person = {
    name: 'Mosh',
    age: 30
};

for (let key in person)
    console.log(key);
// => name 
// => age

for (let key in person)
    console.log(key, person[key]);

// example of array:

const colors = ['red', 'green', 'blue'];

for (let index in colors)
    console.log(index)
// => 0
// => 1
// => 2

for (let index in colors)
    console.log(index, colors[index])
// => 0 red
// => 1 green
// => 2 blue

