// String primitive
const message = 
'This is my\n' + 
'first message';

// Template literals are indicated by back ticks ``
// Template literals help us write cleaner code

const another = `This is my
'first' message`;
console.log(another) // => This is my
                    //     'first' message

// Template literals are especially useful when writing emails.

const name = 'John';

const email = 
`Hi ${name} ${2 + 3},

Thanks you for joining my emailing list.

Regards,

Mosh`;

console.log(email)