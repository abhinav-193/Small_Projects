# Pigeonhole Sort in Python - Nishant Giri

def pigeonholeSort(items):    
    largest = max(items)
    smallest = min(items)
    size = largest - smallest + 1
    pigeonHole = []
    sortedArray = []
    # Append an Empty Array
    for i in range(size):
        pigeonHole.append([])
    # Append Item to Hole
    for item in items:
        pigeonHole[item - smallest].append(item)
    # Add Hole to Sorted Array
    for i in range(size):
        sortedArray += pigeonHole[i]
    # Return Sorted Array
    return sortedArray
items = [1, 21, 20, 10, 24, 13, 2]
pigeonholeSort(items)