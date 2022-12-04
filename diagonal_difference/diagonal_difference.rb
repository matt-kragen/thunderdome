# Given a square matrix, calculate the absolute difference between the sums of its diagonals.
# For example, the square matrix  is shown below:
# 1 2 3
# 4 5 6
# 9 8 9

# The left-to-right diagonal = 1 + 5 + 9 = 15
# The right to left diagonal = 3 + 5 + 9 = 17
# Their absolute difference is |15 - 17| = 2

# Saqmple Input
# [11, 2, 4]
# [4, 5, 6]
# [10, 8, -12]

# Sample Output
# 15

def diagonalDifference(arr)
    diagonal_right = 0
    diagonal_left = 0
    arr.each_with_index do |row, index|
        diagonal_right += row[index]
        diagonal_left += row[-index - 1]
    end
    (diagonal_right - diagonal_left).abs
end

arr = [[11, 2, 4], [4, 5, 6], [10, 8, -12]]
p diagonalDifference(arr)