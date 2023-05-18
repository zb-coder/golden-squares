// This is an example of a variable.
let name = 'Zimbob';
console.log(name);

// This is an example that the constant varible will 
// always be chosen. The second line is a const.
let interestRate = 0.3;
interestRate = 1;
// const interestRate = 1; - The constant variable can also
// be written like this.
console.log(interestRate);

let pet = 'cat'; // String Literal
let doorNumber = '30'; // Number Literal
let isApproved = true; // Boolean Literal
let secondName; // Undefined Literal
let selectedColour = null; //Null Literal

console.log(pet, secondName, doorNumber)

// An Object set to an object literal with 2 key value pairs
// firstName is a key/ property of this object, 'Mosh; is the value.
let person = {
    firstName: 'Mosh',
    age: 30
};

person.firstName = 'tracy';
console.log(person.firstName)

console.log(person)

//Array
// An array with 2 elements and then I add some
// An array is an object in javascript
let selectedColours = ['red', 'blue'];
selectedColours[2] = 'green'; //this adds a 3rd element to the array
selectedColours[3] = 1; //this adds a number to the array
console.log(selectedColours); //to display all elements in the array
console.log(selectedColours[0]); //to display the first element in the array
console.log(selectedColours);
console.log(selectedColours.length); // .length tells us how many items are in the array

// Function
// The body of a function is what is in between the curly brackets
// We don't have to put a semi colon at the end of the function
// We only add a semicolon for statements, not a function.
function greet() {
    console.log('Hello World');
}

greet(); // This calls the function

// what is in between the brackets is called a parameter.
// A function parameter is like a variable, it is only meaningful
// within the function. It will not be accessible outside of the function.
function greeting(name) {
    console.log('Hello ' + name);
}

// 'Zimbob' is an argument to the function.
greeting('Zimbob'); 

// This function performs a task, it displays something in the console.
function greetings(firstName, lastName) {
    console.log('Hello ' + firstName + ' ' + lastName);
}

greetings('Tracy', 'Beaker');

// This function calculates a value
function square(number){
    return number * number;
}

console.log(square(6));