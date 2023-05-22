
//These are what numbers are represented as in the digital (computer) system.

// 1 = 00000001 seven 0's and a 1 - 8 digits - this is called a bit.
// 2 = 00000010 - 6 0's and 10.
// R = 00000011 = 3 - This is the result for bitwise OR // You get it by putting down a 0 if there is a 0 and a 1 if there is atleast one 1.
// R = 00000000 = 0 - This is the result for bitwise AND // If both numbers are 1, 1 will be returned otherwise the result will be 0.


console.log(1 | 2); //Bitwise OR (|) result => 3
console.log(1 & 2); //Bitwise AND (|) result => 0

// Real world example of Bitwise Operators
// We want to implement an access control system
// The user can have these 3 permissions: Read, Write, Execute
// We can use 1 bite (or 8 bites) of information to determine the kind of permisiion a user can have.
// For example we can use:

// 00000100 - Read Permission
// 00000010 - Write Permission
// 00000001 - Execute Permission

// 00000100 - Read Permission
// 00000110 - Read and write Permission
// 00000111 - Read, Write and Execute Permission

const readPermission = 4;
const writePermission = 2;
const executePermission = 1;

let myPermission = 0;
// with the bitewise OR operator we can add permissions
myPermission = myPermission | readPermission | writePermission;
console.log(myPermission); // => 6

// with the bitwise AND operator we can check if we have a given permission.
let message = (myPermission & readPermission) ? 'yes' : 'no';
console.log(message); // => yes, this means we have the read permission