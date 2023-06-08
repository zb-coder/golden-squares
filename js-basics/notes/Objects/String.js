// String primitive
const message = 'This is my first message';

console.log(typeof message) // => String
console.log(message.length) // => 24 - checks how many characters the string has
console.log(message[0]) //=> 'T' - checks what is at index 0
console.log(message.includes('my')) //=> true - checks if this word is included int he string
console.log(message.includes('not')) //=> false
console.log(message.startsWith('This')) //=> true - checks if the string starts with this word, it is case sensitive
console.log(message.endsWith('e')) //=> true - checks if string ends with e
console.log(message.indexOf('my')) //=> 8, checks what the index the word my starts in
console.log(message.replace('first', 'second')) //=> This is my second message - replaces the first word with the second word. This returns the new string but does not modify the original string.
console.log(message.toUpperCase()) //=> THIS IS MY FIRST MESSAGE
console.log(message.toLowerCase()) //=> this is my first message
console.log(message.trim()) //=> This gets rid of the white space before and after our message.
console.log(message.trimLeft()) //=> This gets rid of the white space before the message
console.log(message.trimRight()) //=> This gets rid of the white space after the message
console.log(message.split(' ')) //=> [ 'This', 'is', 'my', 'first', 'message' ] - splits the sentance into an array with 5 items
const string = 'My \'other word' //=> My 'other word - '\ in a word includes an ' in the word without it breaking the sring
const string2 = 'My other\n word' //=> my other
                                  //=> word - \n breaks a sentence into a new line



// String object
const another = new String('hi')

console.log(typeof another) //=> Object
