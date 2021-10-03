
function ternarySearch(l, r, key, ar) {
    if (r >= l) {

        let mid1 = l + parseInt((r - l) / 3, 10);
        let mid2 = r - parseInt((r - l) / 3, 10);

        if (ar[mid1] == key) {
            return mid1;
        }
        if (ar[mid2] == key) {
            return mid2;
        }

        if (key < ar[mid1]) {


            return ternarySearch(l, mid1 - 1, key, ar);
        }
        else if (key > ar[mid2]) {


            return ternarySearch(mid2 + 1, r, key, ar);
        }
        else {


            return ternarySearch(mid1 + 1, mid2 - 1, key, ar);
        }
    }

    return -1;
}

let l, r, p, key;

let ar = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

l = 0;
r = 9;

key = 5;

p = ternarySearch(l, r, key, ar);

document.write("Index of " + key + " is " + p + "</br>");

key = 50;

p = ternarySearch(l, r, key, ar);

document.write("Index of " + key + " is " + p);

