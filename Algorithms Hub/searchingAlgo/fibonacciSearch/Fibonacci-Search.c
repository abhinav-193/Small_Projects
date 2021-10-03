// Fibonacci Search in C - Sharoni Bose

#include<stdio.h>
void fibonacciSearch(int *arr, int start, int end, int *fibonacciElement, int index, int element)
{
    int i, middle;
	// Assign Middle of the Array with Fibonacci Element
	middle = start + fibonacciElement[index - 2];
	// Return if Element Found at Middle Index
	if(element == arr[middle])
	{
		printf("\nElement Found At: %d\n", middle);
		return;
	}
	// Return if Element Found at Start Index
	else if(element == arr[start])
	{
		printf("\nElement Found At: %d", start);
		return;
	}
	// Return if Element Found at End Index
	else if(element == arr[end])
	{
		printf("\nElement Found At: %d", end);
		return;
	}
	// Middle Equals to Start or End of the Sub-Array
	else if((middle == start) || (middle == end))
	{
		printf("\nElement Not Found\n");
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
    printf("Enter Size of Array: ");
    scanf("%d", &size);
    printf("\n");
    int fibonacciElement[size], arr[size];
    for(i = 0; i < size; i++)
    {
        printf("Enter Element %d: ", i + 1);
        scanf("%d", &arr[i]);
    }
	fibonacciElement[0] = 0;
	fibonacciElement[1] = 1;
	i = 1;
	while(fibonacciElement[i] < size)
	{
		i++;
		fibonacciElement[i] = fibonacciElement[i - 1] + fibonacciElement[i - 2];
	}
	printf("\nEnter the Element to Search: ");
    scanf("%d", &element);
	fibonacciSearch(arr, 0, size - 1, fibonacciElement, i, element);
	return 0;
}