// Enumerating properties of an object

const circle = {
    radius: 1,
    draw() {
        console.log('draw');
    }
};

for (let key in circle) 
    console.log(key); // => radius 
                      // => draw

for (let key in circle)
    console.log(key, circle[key]); // => radius 1 //(the value of radius is 1)
                                  // => draw [Function: draw] //(the value of draw is a function)

// for (let key of circle)
//     console.log(key); // => ERROR

// The For...Of loop can only be used with iterables such as arrays and maps.
// An Object is not iterable, we cannot iterate it using a for of loop.

for (let key of Object.keys(circle))
    console.log(key); //=> radius, draw

for (let entry of Object.entries(circle))
    console.log(entry); // => [ 'radius', 1 ]
                        // => [ 'draw', [Function: draw] ]

if ('radius' in circle) console.log('yes'); //=> yes... This checks if a given object has a given property or method. 