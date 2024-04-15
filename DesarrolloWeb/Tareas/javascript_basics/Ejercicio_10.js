//Natalia Rodriguez Guevara - A01663909

// verify if its a palindrome, return true or false
function palindrome(string){
    let removeSpaces = string.replace(/\s/g, '').toLowerCase();
    let reverseString = removeSpaces.split('').reverse().join('');
    return removeSpaces === reverseString;
}

console.log(palindrome("anita lava la tina"));
console.log(palindrome("hola mundo"));
console.log(palindrome("oso"));