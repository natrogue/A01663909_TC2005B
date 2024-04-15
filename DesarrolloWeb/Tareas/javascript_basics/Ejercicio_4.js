// Natalia Rodriguez Guevara - A01663909

function firstCapitalLeter(string){
    let words = string.split(" ");
    let newString = "";
    for (let i = 0; i < words.length; i++){
        let word = words[i];
        let newWord = word.charAt(0).toUpperCase() + word.slice(1);
        newString += newWord + " ";
    }
    return newString;
}

console.log(firstCapitalLeter("hola mundo"));
console.log(firstCapitalLeter("hola mundo cruel"));
console.log(firstCapitalLeter("grupo dos"));