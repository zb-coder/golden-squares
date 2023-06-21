
let address = {
    street: 'a',
    city: 'b',
    zipCode: 'c'
}

// Write 2 different functions, one is a constructor function,
// the other is a factory function, to initialize an address object.

// Factory function

function createAddress(street, city, zipCode) {
    return {
        street,
        city,
        zipCode
    };
}

let address1 = createAddress('Road', 'Sheffield', 'S58TT')
console.log(address1);

// Constructor Function

function Address(street, city, zipCode) {
        this.street = street;
        this.city = city;
        this.zipCode = zipCode;
} 

let address2 = new Address('Road', 'Manchester', 'M34WO')
console.log(address2);