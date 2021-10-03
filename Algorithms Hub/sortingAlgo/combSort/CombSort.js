
function getNextGap(gap) {
    gap = parseInt((gap * 10) / 13, 10);
    if (gap < 1)
        return 1;
    return gap;
}

function sort(arr) {
    let n = arr.length;
    let gap = n;
    let swapped = true;
    while (gap != 1 || swapped == true) {
        gap = getNextGap(gap);
        swapped = false;

        for (let i = 0; i < n - gap; i++) {
            if (arr[i] > arr[i + gap]) {
                let temp = arr[i];
                arr[i] = arr[i + gap];
                arr[i + gap] = temp;
                swapped = true;
            }
        }
    }
}

let arr = [8, 4, 1, 56, 3, -44, 23, -6, 28, 0];
sort(arr);

document.write("sorted array" + "</br>");
for (let i = 0; i < arr.length; ++i)
    document.write(arr[i] + " ");
