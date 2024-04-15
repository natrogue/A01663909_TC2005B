// Natalia Rodriguez Guevara - A01663909

function powerOfTwo(num){
    return num && (num & (num - 1)) === 0;
}

console.log(powerOfTwo(2));
console.log(powerOfTwo(5));
console.log(powerOfTwo(77));