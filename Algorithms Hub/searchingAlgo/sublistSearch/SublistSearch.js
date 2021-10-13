class Node {
    constructor() {
        this.data = 0;
        this.next = null;
    }
}

function findList(first, second) {
    var ptr1 = first, ptr2 = second;
    if (first == null && second == null)
        return true;

    if (first == null || (first != null &&
        second == null))
        return false;

    while (second != null) {

        ptr2 = second;

        while (ptr1 != null) {

            if (ptr2 == null)
                return false;


            else if (ptr1.data == ptr2.data) {
                ptr1 = ptr1.next;
                ptr2 = ptr2.next;
            }
            else
                break;
        }

        if (ptr1 == null)
            return true;
        ptr1 = first;
        second = second.next;
    }
    return false;
}

function printList(node) {
    while (node != null) {
        document.write("%d ", node.data);
        node = node.next;
    }
}


function newNode(key) {
    var temp = new Node();
    temp.data = key;
    temp.next = null;
    return temp;
}


var a = newNode(1);
a.next = newNode(2);
a.next.next = newNode(3);
a.next.next.next = newNode(4);

var b = newNode(1);
b.next = newNode(2);
b.next.next = newNode(1);
b.next.next.next = newNode(2);
b.next.next.next.next = newNode(3);
b.next.next.next.next.next = newNode(4);

if (findList(a, b) == true)
    document.write("LIST FOUND");
else
    document.write("LIST NOT FOUND");

