//Natalia Rodriguez Guevara - A01663909

function remomveDupes(array){
    let unique = [];
    for (let i = 0; i < array.length; i++){
        if (unique.indexOf(array[i]) === -1){
            unique.push(array[i]);
        }
    }
    return unique;
}

console.log(remomveDupes([1, 0, 1, 0]));
console.log(remomveDupes(["The", "big", "big", "cat"]));
console.log(remomveDupes(["John", "Taylor", "John"]));