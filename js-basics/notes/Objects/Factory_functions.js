// Factory function
// like a factory, these factors functions produce objects.


const circle = {
    radius: 1,
    location: {
        x: 1,
        y: 1
    },
    isVisible: true,
    draw: function() {
        console.log('draw');
    }
};


// Factory Function example:
function createCircle() {
    return {
        radius: 1,
        location: {
            x: 1,
            y: 1
        },
        isVisible: true,
        draw: function() {
            console.log('draw');
        }
    };
}

// whenever we call the createCircle function, it will get a circle object.
// In the example above the values are hardcoded, e.g. every circle created
// by this function will have the same radius of 1.

function createCircle(radius, location) {
    return {
        radius, //same as => radius: radius
        location, //same as => location: location
        isVisible: true,
        draw () {  //same as =>     draw: function() {
            console.log('draw');   //  console.log('draw');
        }                   //      }
    };
}
const circle1 = createCircle(1, 5)
console.log(circle1) // => { radius: 1, location: 5, isVisible: true, draw: [Function: draw] }

const circle2 = createCircle(12, 25)
console.log(circle2) // => { radius: 12, location: 25, isVisible: true, draw: [Function: draw] }
