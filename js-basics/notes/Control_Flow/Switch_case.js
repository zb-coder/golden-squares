//Switch...case

// With switch and case, we can compare the value of variable against a bunch of other values.
// The values don't have to be strings, they can be numbers or even booleans.


// switch(variable) {
//     case ' ':
//         statement;
//         break;

//     case ' ': 
//         statement;
//         break;
    
//     default:
//         statement;
// }


// An application which shows us if the user is a guest,
// a moderator, or an admin.

let role = 'guest';

switch(role) {
    case 'guest': 
        console.log('Guest User');
        break;
    
    case 'moderator':
        console.log('Moderator User');
        break;

    case 'admin':
        console.log('Admin User');
        break;

    default:
        console.log('Unknown User');
}

// We can implement this logic using if else statment
// Using if else statments is more commonly used

if (role === 'guest')
    console.log('Guest User');
else if (role === 'moderator')
    console.log('Moderator User');
else if (role === 'admin')
    console.log('Admin User');
else 
    console.log('Unknown User');
