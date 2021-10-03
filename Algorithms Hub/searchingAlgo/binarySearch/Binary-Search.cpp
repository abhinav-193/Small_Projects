// Binary Search in C++ - Sharoni Bose

#include<iostream>
using namespace std;
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
    cout<<"Enter Size of Array: ";
    cin>>n;
    cout<<"\n";
    int arr[n];
    for(i = 0; i < n; i++)
    {
        cout<<"Enter Element "<<i + 1<<": ";
        cin>>arr[i];
    }
    cout<<"\nEnter Element to Search: ";
    cin>>element;
    position = binarySearch(arr, 0, n - 1, element);
    if(position == -1) 
    {
        cout<<"\nElement Not Found\n";
    } 
    else 
    {
        cout<<"\nElement Found at Position: "<<position;
        cout<<"\n";
    }
    return 0;
}