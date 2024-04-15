// Natalia Rodriguez Guevara - A01663909

function hackerSpeak(string){
    let dictionary = {
        a: "4",
        e: "3",
        i: "1",
        o: "0",
        s: "5"
    };
    let newString = "";
    for (let i = 0; i < string.length; i++){
        if (dictionary[string[i]]){
            newString += dictionary[string[i]];
        } else {
            newString += string[i];
        }
    }
    return newString;
}

console.log(hackerSpeak("javascript"));
console.log(hackerSpeak("aaaassss"));
console.log(hackerSpeak("hola mundo"));