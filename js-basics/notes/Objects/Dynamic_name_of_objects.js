
// We cannot reset circle to a new object but we can change 
// the circle object by adding or removing the properties.

const circle = {
    radius: 1
};

circle.color = 'yellow'; // You can add properties to an object
circle.draw = function() {}

delete circle.color;    // You can delete properties from an object

console.log(circle);