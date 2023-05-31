//  A function that shows all the prime numbers of the limit

function showPrimes(limit){
    for (let number = 2; number <= limit; number++) 
        if (isPrime(number)) console.log(number);
}

function isPrime(number) {
    for (let factor = 2; factor < number; factor++) 
        if (number % 2 === 0) 
            return false;
        
    return true;
}

showPrimes(20);