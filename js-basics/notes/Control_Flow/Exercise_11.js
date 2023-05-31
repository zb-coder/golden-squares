//  A function that shows all the prime numbers of the limit

function showPrimes(limit){
    for (let number = 2; number <= limit; number++) {

        let isPrime = true;
        for (let factor = 2; factor < number; factor++) {
        if (number % 2 === 0) {
            isPrime = false;
            break;
            }
        }
        if (isPrime) console.log(number);
    }
}

showPrimes(20);