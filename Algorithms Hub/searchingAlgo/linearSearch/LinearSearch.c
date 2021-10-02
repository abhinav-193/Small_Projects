#include <stdio.h>

int search(int arr[], int n, int x)
{
    int i;
    for (i = 0; i < n; i++)
        if (arr[i] == x)
            return i;
    return -1;
}

// Driver code
int main(void)
{
    int n , x;
    printf("Enter the array size : ");
    scanf("%d", &n);
    int arr[n];
    printf("Enter the elements of array : ");
    for (int i = 0; i < n; i++)
    {
        scanf("%d" , &arr[i]);
    }
    printf("Enter the element to be searched : ");
    scanf("%d" , &x);
    // Function call
    int result = search(arr, n, x);
    (result == -1)
        ? printf("Element is not present in array")
        : printf("Element is present at index %d", result + 1);
    return 0;
}