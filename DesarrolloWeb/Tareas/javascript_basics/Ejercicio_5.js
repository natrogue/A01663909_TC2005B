// Natalia Rodriguez Guevara - A01663909
function mcd(a, b){
    if (a == 0){
        return b;
    }
    return mcd(b % a, a);
}

console.log(mcd(48, 18));
console.log(mcd(10, 15));
console.log(mcd(5, 7));