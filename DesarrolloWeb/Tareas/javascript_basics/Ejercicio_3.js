// Natalia Rodriguez Guevara - A01663909

// funcion para invertir arreglo y regresar un nuevo arreglo

function invertNewArray(array){
    let newArray = [];
    for (let i = array.length - 1; i >= 0; i--){
        newArray.push(array[i]);
    }
    return newArray;
}

// funcion que invierte el arreglo og

function invertOriginalArray(array){
    let length = array.length;
    for (let i = 0; i < length/2; i++){
        let temp = array[i];
        array[i] = array[length - 1 - i];
        array[length - 1 - i] = temp;
    }
    return array;
}



console.log(invertNewArray([1, 2, 3, 4, 5]));
console.log(invertOriginalArray([1, 2, 3, 4, 5]));

console.log(invertNewArray([1, 2, 3, 4, 5, 6]));
console.log(invertOriginalArray([1, 2, 3, 4, 5, 6]));

console.log(invertNewArray([3, 0, 2, 5, -1, 4, 1]));
console.log(invertOriginalArray([3, 0, 2, 5, -1, 4, 1]));