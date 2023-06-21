// Create an address object with 3 properties:
// 1- Street
// 2- City
// 3- zipCode
// create a function called showAddress(address) that 
// displays all the properties of this object along 
// with their value.

const address = {
    Street: 'West Street',
    City: 'Manchester',
    Zipcode: 'M12 7IO'
};

function showAddress(address) {
    for (let key in address)
        console.log(key, address[key]);
}

showAddress(address);