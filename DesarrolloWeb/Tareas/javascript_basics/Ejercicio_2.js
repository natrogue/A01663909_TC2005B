// Natalia Rodriguez Guevara - A01663909

function bubbleSort(list){
    let length = list.length;
    for (let i = 0; i < length; i++){
        for (let j = 0; j < length - i -1; j++){
            if (list[j] > list[j+1]){
                let temp = list[j];
                list[j] = list[j+1];
                list[j+1] = temp;
            }
        }
    }
    return list;
}

console.log(bubbleSort([3, 0, 2, 5, -1, 4, 1]));
console.log(bubbleSort([1, 0, 2, 3, 4, 5, 6]));
console.log(bubbleSort([1, 9, 2, 4, 6]));