// A function that only displays the properties of the object
// that are of type string

const movie = {
    title: 'a',
    releaseYear: 2018,
    rating: 4.5,
    director: 'b'
};

function showProperties(obj) {
    for (let key in obj) {
        if (typeof obj[key] === 'string')
            console.log(key, obj[key]);
    }
}

showProperties(movie);