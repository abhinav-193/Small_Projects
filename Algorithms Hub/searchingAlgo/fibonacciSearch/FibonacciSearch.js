function fibonaccianSearch(arr, x, n) {

    let fibMMm2 = 0;
    let fibMMm1 = 1;
    let fibM = fibMMm2 + fibMMm1;


    while (fibM < n) {
        fibMMm2 = fibMMm1;
        fibMMm1 = fibM;
        fibM = fibMMm2 + fibMMm1;
    }

    let offset = -1;

    while (fibM > 1) {

        let i = Math.min(offset + fibMMm2, n - 1);
        if (arr[i] < x) {
            fibM = fibMMm1;
            fibMMm1 = fibMMm2;
            fibMMm2 = fibM - fibMMm1;
            offset = i;
        }

        else if (arr[i] > x) {
            fibM = fibMMm2;
            fibMMm1 = fibMMm1 - fibMMm2;
            fibMMm2 = fibM - fibMMm1;
        }


        else return i;
    }

    if (fibMMm1 && arr[n - 1] == x) {
        return n - 1
    }
    return -1;
}

let arr = [10, 22, 35, 40, 45, 50, 80, 82, 85, 90, 100, 235];
let n = arr.length;
let x = 235;
let ind = fibonaccianSearch(arr, x, n);
if (ind >= 0) {
    document.write("Found at index: " + ind);
} else {
    document.write(x + " isn't present in the array");
}