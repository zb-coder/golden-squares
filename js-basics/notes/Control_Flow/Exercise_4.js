
// Speed Limit = 70
// Under Speed Limit => 'Ok'
// 5 => 1 point
// 75 speed => Point: 1
// More than 12 points => License Suspended
// Math.floor(1.3) => 1, rounds down to the nearest whole number


function checkSpeed(speed) {
    const speedLimit = 70;
    const kmPerPoint = 5;

    if (speed < speedLimit) 
        console.log('Ok') 
    else {
        const points = Math.floor((speed - speedLimit) / kmPerPoint);
        if (points >= 12)
            console.log('License Suspended');
        else 
            console.log('Points :', points);
    }
}

checkSpeed(91);