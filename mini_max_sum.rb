# Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers. Then print the respective minimum and maximum values as a single line of two space-separated long integers.

arr_1 = [1, 3, 5, 7, 9]
arr_2 = [1, 2, 3, 4, 5]

def miniMaxSum(arr)
    sorted = arr.sort
    min = sorted[0..3].sum
    max = sorted[-4..-1].sum
    print "#{min} #{max} \n"
end

miniMaxSum(arr_1)
# 16 24
miniMaxSum(arr_2)
# 10 14