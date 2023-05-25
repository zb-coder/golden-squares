// Landscape of Portrait

// A function that returns true if landscape(width is greater than height).
// Otherwise it returns false.

function isLandscape(width, height) {
    return (width > height) ? true : false
}

let landscape = isLandscape(13, 12);
console.log(landscape);