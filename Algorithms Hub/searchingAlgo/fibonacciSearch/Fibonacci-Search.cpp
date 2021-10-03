// Fibonacci Search in C++ - Sharoni Bose

#include<iostream>
using namespace std;
void fibonacciSearch(int *arr, int start, int end, int *fibonacciElement, int index, int element)
{
    int i, middle;
	// Assign Middle of the Array with Fibonacci Element
	middle = start + fibonacciElement[index - 2];
	// Return if Element Found at Middle index
	if(element == arr[middle])
	{
		cout<<"\nElement Found At: "<<middle;
        cout<<"\n";
		return;
	}
	// Return if Element Found at Start index
	else if(element == arr[start])
	{
		cout<<"\nElement Found At: "<<start;
        cout<<"\n";
		return;
	}
	// Return if Element Found at End index
	else if(element == arr[end])
	{
		cout<<"\nElement Found At: "<<end;
        cout<<"\n";
		return;
	}
	// Middle Equals to Start or End of the Sub-Array
	else if((middle == start) || (middle == end))
	{
		cout<<"\nElement Not Found\n";
		return;
	}
	// Proceed According to the Value of the Element
	else if(element > arr[middle])
		fibonacciSearch(arr, middle, end, fibonacciElement, index - 1, element);
	else
		fibonacciSearch(arr, start, middle, fibonacciElement, index - 2, element);
}
int main()
{
    int i, size, element;
    cout<<"Enter Size of Array: ";
    cin>>size;
    cout<<"\n";
	int fibonacciElement[size], arr[size];
	for(i = 0; i < size; i++)
    {
        cout<<"Enter Element "<<i + 1<<": ";
        cin>>arr[i];
    }
	fibonacciElement[0] = 0;
	fibonacciElement[1] = 1;
	i = 1;
	while(fibonacciElement[i] < size)
	{
		i++;
		fibonacciElement[i] = fibonacciElement[i - 1] + fibonacciElement[i - 2];
	}
	cout<<"\nEnter the Element to Search: ";
    cin>>element;
	fibonacciSearch(arr, 0, size - 1, fibonacciElement, i, element);
	return 0;
}
