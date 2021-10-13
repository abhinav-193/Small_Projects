# Binary Search in Python - Nishant Giri

def binarySearch(arr, element, left, right):
    if right >= left:
        middle = (left + (right - left)) // 2
        if arr[middle] == element:
            return middle
        elif arr[middle] > element:
            return binarySearch(arr, element, left, middle - 1)
        else:
            return binarySearch(arr, element, middle + 1, right)
    else:
        return -1
arr = []
n = int(input("Enter Number of Elements: "))
for i in range(0, n):
    num = input("\nEnter the Numbers: ")
    arr.append(num)
element = int(input("Enter Element to Find: "))
index = binarySearch(arr, element, 0, len(arr) - 1)
if index == -1:
    print("\nElement Not Found")
else:
    print("\nElement Found at Index: " + str(index))