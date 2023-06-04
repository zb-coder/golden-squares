// Factory Function
function createCircle(radius) {
    return {
        radius,
        draw: function() {
            console.log('draw');
        }
    };
}
const circle = createCircle(1);

// Example of Constructor Function
function Circle(radius) {
    this.radius = radius;   //this references an empty object
    this.draw = function() {
        console.log('draw');
    }
}

const another = new Circle(1)
console.log(another.constructor)
console.log(circle.constructor)

// Every object has a constructor property and that refences 
// a function that was used to create that object.