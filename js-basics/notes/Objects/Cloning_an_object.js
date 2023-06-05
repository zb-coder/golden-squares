// Cloning an object

const circle = {
    radius: 1,
    draw() {
        console.log('draw');
    }
};

const another ={};

// This is the old way of copying/ cloning an object
for (let key in circle)
    another[key] = circle[key];

console.log(another) //=> { radius: 1, draw: [Function: draw] }

// The new and better way of doing this
const another1 = Object.assign({}, circle);

console.log(another1) //=> { radius: 1, draw: [Function: draw] }

// You can add properties to the new object whilst cloning the properties of another.
const another2 = Object.assign({
    color: 'red'
}, circle);

console.log(another2) //=> { color: 'red', radius: 1, draw: [Function: draw] }

// SIMPLEST WAY TO CLONE AN OBJECT

const another3 = { ...circle };

console.log(another3) //=> { radius: 1, draw: [Function: draw] }