// Natalia Rodriguez Guevara - A01663909

function noRepeat(chain) {
    for (let i = 0; i < chain.length; i++) {
        if (chain.indexOf(chain[i]) === chain.lastIndexOf(chain[i])) {
            return chain[i];
        }
    }
    return null;
}
console.log(noRepeat('abacddbeecf'));
console.log(noRepeat('abcabcabce'));
console.log(noRepeat(''));
