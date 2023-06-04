// Constructor Function

// Camel Notation: oneTwoThreeFour
// Pascal Notation: OneTwoThreeFour => used when naming constructor functions

// Example of Constructor Function
function Circle(radius) {
    this.radius = radius;   //this references an empty object
    this.draw = function() {
        console.log('draw');
    }
}

const circle = new Circle(1)

// when we use the 'new' operator, like above, 3 things happen:
// 1 - it creates an emptry Javascript object e.g. const x = {};
// 2 - it will set this to point to the new object
// 3 - it will return the new object from the function