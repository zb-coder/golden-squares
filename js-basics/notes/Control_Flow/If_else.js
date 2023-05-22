// In Javascript, we have 2 types of conditional statements:
// 1 - If...else statements
// 2 - Switch...case statements

// If...else statements
// If there is a single statement, you don't need the curly brackets


// An application that depends on the hour
// If hour is between 6am and 12pm: Good morning!
// If it is between 12pm and 6pm: Good afternoon!
// Otherwise: Good evening!

// structure of an if...else statement
// if(condition) {
//     statement
// }
// else if(anotherCondition) {
//     statement
// }
// else if(yetAnotherCondition) {
//     statement
// }
// else
//     statement

let hour = 10;

if(hour >= 6 && hour < 12) 
    console.log('Good morning!');
else if (hour >= 12 && hour < 18)
    console.log('Good afternoon!');
else
console.log('Good evening!');