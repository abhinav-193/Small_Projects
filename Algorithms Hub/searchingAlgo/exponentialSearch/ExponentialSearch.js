function binarySearch(arr, l, r, x) {
    if (r >= l) {
        let mid = l + (r - l) / 2;
        if (arr[mid] == x)
            return mid;

        if (arr[mid] > x)
            return binarySearch(arr, l, mid - 1, x);

        return binarySearch(arr, mid + 1, r, x);
    }

    return -1;
}

function exponentialSearch(arr, n, x) {

    if (arr[0] == x)
        return 0;

    let i = 1;
    while (i < n && arr[i] <= x)
        i = i * 2;

    return binarySearch(arr, i / 2,
        Math.min(i, n - 1), x);
}


let arr = [2, 3, 4, 10, 40];
let n = arr.length;
let x = 10;
let result = exponentialSearch(arr, n, x);
if (result == -1)
    document.write("Element is not present in array");
else
    document.write("Element is present at index " + result);


