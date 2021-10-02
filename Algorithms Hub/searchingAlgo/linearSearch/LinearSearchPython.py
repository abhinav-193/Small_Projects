def search(arr, n, x):

    for i in range(0, n):
        if (arr[i] == x):
            return i
    return -1


# Driver Code
print("Enter the elements of array : ")
arr = [int(_) for _ in input().split(' ')]
n = len(arr)
print("Enter the element to be searched in array : ")
x = int(input())

# Function call
result = search(arr, n, x)
if(result == -1):
    print("Element is not present in array")
else:
    print("Element is present at index", result + 1)
