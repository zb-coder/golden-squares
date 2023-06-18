// Date Object
// It is a built in object in Javascript

const now = new Date();
const date1 = new Date('May 11 2019 09:00');
const date2 = new Date(2018, 4, 11, 9, 0);

now.setFullYear(2017); // This changes the current year
console.log(now.toDateString()); // Gives us the current date => Sun Jun 18 2017
console.log(now.toTimeString()); // Gives us the current time => 15:39:29 GMT+0100 (British Summer Time)
console.log(now.toISOString()); // Gives us date then T then time => 2017-06-18T14:40:28.615Z
