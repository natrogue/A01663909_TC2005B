//Natalia Rodriguez Guevara - A01663909

function factorize(num){
    let factors = [];
    for (let i = 1; i <= num; i++){
        if (num % i === 0){
            factors.push(i);
        }
    }
    return factors;
}

console.log(factorize(12));
console.log(factorize(16));
console.log(factorize(17));