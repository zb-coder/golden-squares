// Objects
// Objects are collections of key value pairs
// Objects group related variables

// What we see below is Object Oriented Programming (OOP) style of programming.
// OOP is a style of programming where we see a program as a collection of 
// objects that talk to each other to perform some functionality.

//  This is a circle object which has a few properties and a function.
//  In OOP, if a function is part of a object it is called a method.
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

circle.draw(); 
// We can call the draw function like this but because it is 
// in an object, it is called a method. It is the draw method.