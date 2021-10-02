// Bucket Sort in C - Nishant Giri

#include<stdio.h>
#include<stdlib.h>
#define ARRAY 10    // Size of Array
#define BUCKET 10   // Number of Buckets
#define INTERVAL 10 // Each Bucket Capacity
struct node 
{
    int data;
    struct node *next;
};
void bucketSort(int []);
struct node *insertionSort(struct node *);
int bucketIndex(int);
void display(int []);
void displayBuckets(struct node *);
// Sorting Function
void bucketSort(int arr[]) 
{
    int i, j;
    struct node **bucket;
    // Create Buckets and Allocate Memory Size
    bucket = (struct node **)malloc(BUCKET * sizeof(struct node *));
    // Initialize Empty Buckets
    for(i = 0; i < BUCKET; i++) 
    {
        bucket[i] = NULL;
    }
    // Fill the Buckets with Respective Elements
    for(i = 0; i < ARRAY; i++) 
    {
        struct node *ptr;
        int position = bucketIndex(arr[i]);
        ptr = (struct node *)malloc(sizeof(struct node));
        ptr->data = arr[i];
        ptr->next = bucket[position];
        bucket[position] = ptr;
    }
    // Print the Buckets Along with Their Elements
    for(i = 0; i < BUCKET; i++) 
    {
        printf("Bucket %d: ", i + 1);
        displayBuckets(bucket[i]);
        printf("\n");
    }
    // Sort the Elements of Each Bucket
    for(i = 0; i < BUCKET; i++) 
    {
        bucket[i] = insertionSort(bucket[i]);
    }
    printf("\nBuckets After Sorting:\n\n");
    for(i = 0; i < BUCKET; i++) 
    {
        printf("Bucket %d: ", i + 1);
        displayBuckets(bucket[i]);
        printf("\n");
    }
    // Put Sorted Elements in the Array
    for(i = 0, j = 0; i < BUCKET; i++) 
    {
        struct node *ptr;
        ptr = bucket[i];
        while(ptr) 
        {
            arr[j++] = ptr->data;
            ptr = ptr->next;
        }
    }
    return;
}
// Function to Sort the Elements of Each Bucket
struct node *insertionSort(struct node *list) 
{
    struct node *ptrList, *nodeList;
    if((list == 0) || (list->next == 0)) 
    {
        return list;
    }
    nodeList = list;
    ptrList = list->next;
    nodeList->next = 0;
    while(ptrList != 0) 
    {
        struct node *ptr;
        if(nodeList->data > ptr->data) 
        {
            struct node *temp;
            temp = ptrList;
            ptrList = ptrList->next;
            temp->next = nodeList;
            nodeList = temp;
            continue;
        }
        for(ptr = nodeList; ptr->next != 0; ptr = ptr->next) 
        {
            if(ptr->next->data > ptrList->data)
                break;
        }
        if(ptr->next != 0) 
        {
            struct node *temp;
            temp = ptrList;
            ptrList = ptrList->next;
            temp->next = ptr->next;
            ptr->next = temp;
            continue;
        } 
        else 
        {
            ptr->next = ptrList;
            ptrList = ptrList->next;
            ptr->next->next = 0;
            continue;
        }
    }
    return nodeList;
}
// Get the Bucket Index
int bucketIndex(int value) 
{
    return value / INTERVAL;
}
// Display the Array
void display(int arr[]) 
{
    int i;
    for(i = 0; i < ARRAY; i++) 
        printf("%d ", arr[i]);
    printf("\n");
}
// Display the Buckets
void displayBuckets(struct node *list) 
{
    struct node *ptr = list;
    while(ptr) 
    {
        printf("%d ", ptr->data);            
        ptr = ptr->next;
    }
}
// Driver Code
int main() 
{
    int i, arr[ARRAY];
    for(i = 0; i < ARRAY; i++)
    {
        printf("Enter Element %d: ", i + 1);
        scanf("%d", &arr[i]);
    }
    printf("\nInitial Array:\n\n");
    display(arr);
    printf("\n");
    bucketSort(arr);
    printf("\nSorted Array:\n\n");
    display(arr);
    return 0;
}