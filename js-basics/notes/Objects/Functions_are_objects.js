// In Javascript functions are objects

function Circle(radius) {
    this.radius = radius;   //this references an empty object
    this.draw = function() {
        console.log('draw');
    }
}

const another = new Circle(1)
Circle.call({}, 1) = new Circle(1)
// Circle.call({}, 1)  The first argument specifies the target of this
Circle.apply({}, [1, 2, 3]); // This is exactly like the call method above, we can call a function but instead of passing all the arguments explicitly, we pass them in an array.
console.log(Circle.name);
console.log(Circle.call); // This calls a function