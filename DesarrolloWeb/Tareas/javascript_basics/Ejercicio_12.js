// Natalia Rodriguez Guevara - A01663909

function modeAndMean(array){
    array.sort((a, b) => a - b);

    let mean;
    let half = Math.floor(array.length / 2);
    if (array.length % 2){
        mean = array[half];
    }
    else {
        mean = (array[half - 1] + array[half]) / 2;
    }

    let frequency = {};
    let maxFrequency = 0;
    let mode;

    for (let num of array){
        frequency[num] = (frequency[num] || 0) + 1;
        if (frequency[num] > maxFrequency){
            maxFrequency = frequency[num];
            mode = num;
        }
    }
    return {mediana: mean, moda: mode};
}

console.log(modeAndMean([1, 2, 2, 3, 4]));
console.log(modeAndMean([1, 2, 6, 3, 4, 5, 6]));
console.log(modeAndMean([8, 7, 7, 7, 6, 5, 4, 3, 2, 1]));