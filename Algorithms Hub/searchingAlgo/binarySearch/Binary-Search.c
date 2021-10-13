// Binary Search in C - Sharoni Bose

#include<stdio.h>
int binarySearch(int arr[], int left, int right, int element) 
{
    while(left <= right) 
    {
        int middle = (left + (right - left)) / 2;
        if(arr[middle] == element) 
        {
            return middle;
        }
        else if(arr[middle] < element) 
        {
            left = middle + 1;
        } 
        else 
        {
            right = middle - 1;
        }
    }
    return -1;
}
int main() 
{
    int i, n, element, position;
    printf("Enter Size of Array: ");
    scanf("%d", &n);
    printf("\n");
    int arr[n];
    for(i = 0; i < n; i++)
    {
        printf("Enter Element %d: ", i + 1);
        scanf("%d", &arr[i]);
    }
    printf("\nEnter Element to Search: ");
    scanf("%d", &element);
    position = binarySearch(arr, 0, n - 1, element);
    if(position == -1) 
    {
        printf("\nElement Not Found\n");
    } 
    else 
    {
        printf("\nElement Found at Position: %d\n", position);
    }
    return 0;
}