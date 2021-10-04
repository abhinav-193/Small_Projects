#include<iostream>
using namespace std;

void display(int *array, int size) {
   for(int i = 0; i<size; i++)
      cout << array[i] << " ";
   cout << endl;
}

void merge(int arr[] , int l , int m , int r){
    int n1 = m-l+1;
    int n2 = r-m;
    int larr[n1] , rarr[n2];
    int i,j;
    for ( i = 0; i < n1; i++)
    {
        larr[i] = arr[l+i];
    }
    for(j = 0; j<n2; j++){
      rarr[j] = arr[m+1+j];
    }
    i = 0; j = 0; 
    int k = l;
    while(i < n1 && j<n2) {
      if(larr[i] <= rarr[j]) {
         arr[k] = larr[i];
         i++;
      }else{
         arr[k] = rarr[j];
         j++;
      }
      k++;
    }
    while(i<n1) {       //extra element in left array
      arr[k] = larr[i];
      i++; k++;
    }
    while(j<n2) {     //extra element in right array
      arr[k] = rarr[j];
      j++; k++;
    }
}

void mergesort(int* arr , int start , int end){
    int mid;
    if (start < end)
    {
        mid = start+(end-start)/2;
        mergesort(arr , start , mid);
        mergesort(arr , mid+1 , end);
        merge(arr , start , mid , end);
    }
}

int main(){
    int n;
    cout << "Enter the number of elements: ";
    cin >> n;
    int arr[n];     //create an array with given number of elements
    cout << "Enter elements:" << endl;
    for(int i = 0; i<n; i++) {
       cin >> arr[i];
    }
    cout << "Array before Sorting: ";
    display(arr, n);
    mergesort(arr, 0, n-1);     //(n-1) for last index
    cout << "Array after Sorting: ";
    display(arr, n);
}