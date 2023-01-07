#
# Complete the 'countingSort' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY arr as parameter.
#
# For this exercise, always return a frequency array with 100 elements.
# The example above shows only the first 4 elements, the remainder being zeros.

def countingSort(arr):
    counter = [0] * 100
    for i in arr:
        counter[i] += 1
    return counter
        

print(countingSort([1, 1, 3, 2, 1]))
print(countingSort([4, 6, 5, 3, 3, 1]))
print(countingSort([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 1]))