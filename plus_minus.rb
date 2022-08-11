# plusMinus

# Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero. Print the decimal value of each fraction on a new line with  places after the decimal.

arr_1 = [-1, -1, 0, 1, 1]
arr_2 = [-4, 3, -9, 0, 4, 1]

def plusMinus(arr)
  pos = arr.count { |x| x > 0}
  neg = arr.count { |x| x < 0}
  zero = arr.count { |x| x == 0}
  p (pos.to_f / arr.length).round(6)
  p (neg.to_f / arr.length).round(6)
  p (zero.to_f / arr.length).round(6)
end

plusMinus(arr_1)
# 0.400000
# 0.400000
# 0.200000

plusMinus(arr_2)
# 0.500000
# 0.333333
# 0.166667 