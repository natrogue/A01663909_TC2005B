//Natalia Rodriguez Guevara - A01663909

function frequentString(array){
    let frequency = {};
    let maxFrequency = 0;
    let mostFrequent;

    for (let string of array){
        frequency[string] = (frequency[string] || 0) + 1;
        if (frequency[string] > maxFrequency){
            maxFrequency = frequency[string];
            mostFrequent = string;
        }
    }
    return mostFrequent;
}

console.log(frequentString(["uno", "tres", "tres", "tres", "cuatro"]));
console.log(frequentString(["uno", "dos", "dos", "dos", "tres"]));
console.log(frequentString(["a", "bb", "bb", "bb"]));