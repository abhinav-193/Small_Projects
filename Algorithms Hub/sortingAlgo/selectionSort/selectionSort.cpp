// C++ program for implementation of selection sort
#include <iostream>

using namespace std;

void swap(int &x, int &y)
{
	int temp = x;
	x = y;
	y = temp;
}

void selectionSort(int arr[], int n)
{
	int i, j;

	// One by one move boundary of unsorted subarray
	for (i = 0; i < n-1; i++)
	{
		for (j = i+1; j < n; j++)
		if (arr[j] < arr[i])
		    // Swap the found minimum element with the first element
		    swap(arr[i], arr[j]);
	}
}

/* Function to print an array */
void printArray(int arr[], int size)
{
	int i;
	for (i=0; i < size; i++)
		cout << arr[i] << " ";
	cout << endl;
}

// Driver program to test above functions
int main()
{
	int arr[] = {29, 64, 19, 44, 13};
	int n = sizeof(arr)/sizeof(arr[0]);
	selectionSort(arr, n);
	cout << "Sorted array: \n";
	printArray(arr, n);
	return 0;
}
