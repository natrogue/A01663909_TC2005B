// Natalia Rodriguez Guevara - A01663909

function descendingList(list){
    let length = list.length;
    for (let i = 0; i < length; i++){
        for (let j = 0; j < length - i -1; j++){
            if (list[j] < list[j+1]){
                let temp = list[j];
                list[j] = list[j+1];
                list[j+1] = temp;
            }
        }
    }
    return list;
}

console.log(descendingList([3, 0, 2, 5, -1, 4, 1]));
console.log(descendingList([5, 2, 8, 4, 1, 9]));
console.log(descendingList([1, 9, 2, 4, 6]));