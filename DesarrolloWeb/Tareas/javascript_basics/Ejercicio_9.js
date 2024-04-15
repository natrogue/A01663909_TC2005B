//Natalia Rodriguez Guevara - A01663909

function shortestString(array){
    let shortest = array[0].length;
    for (let i = 1; i < array.length; i++){
        if (array[i].length < shortest){
            shortest = array[i].length;
        }
    }
    return shortest;
}

console.log(shortestString(["uno", "do", "tres", "cuatro"]));
console.log(shortestString(["uno", "dos", "tres"]));
console.log(shortestString(["a", "bb"]));
