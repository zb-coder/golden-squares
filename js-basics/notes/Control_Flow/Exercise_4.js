
// Speed Limit = 70
// Under Speed Limit => 'Ok'
// 5 => 1 point
// 75 speed => Point: 1
// More than 12 points => License Suspended
// Math.floor(1.3) => 1, rounds down to the nearest whole number


function checkSpeed(speed) {
    const speedLimit = 70;

    if (speed < speedLimit) 
        console.log('Ok') 
    
    if ((speed >= 75) && (speed < 80))
        console.log('Point 1')
    
    if ((speed >= 80) && (speed < 85))
        console.log('Point 2')

    if ((speed >= 85) && (speed < 90))
        console.log('Point 3')

    if ((speed >= 90) && (speed < 95))
        console.log('Point 4')

    if ((speed >= 95) && (speed < 100))
        console.log('Point 5')

    if ((speed >= 100) && (speed < 105))
        console.log('Point 6')

    if ((speed >= 105) && (speed < 110))
        console.log('Point 7')

    if ((speed >= 110) && (speed < 115))
        console.log('Point 8')

    if ((speed >= 115) && (speed < 120))
        console.log('Point 9')

    if ((speed >= 120) && (speed < 125))
        console.log('Point 10')
    
    if ((speed >= 125) && (speed < 130))
        console.log('Point 11')

    if ((speed >= 130) && (speed < 135))
        console.log('Point 12')

    if (speed >= 135)
        console.log('License Suspended')
}

let speedCheck13 = checkSpeed(135);