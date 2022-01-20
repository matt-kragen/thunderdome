# Return the largest product of two adjacent integers in the array

def adj_prod(array)
  max = 0
  i = 0
  while i < array.length - 1 do
    product = array[i] * array[i + 1]
    max = product if product > max
    i += 1
  end
  max
end

a1 = [1, 2, 3, 4, 5]
a2 = [-1, 5, 9, 3, -4]
a3 = [7, 4, 9, 2, 5]
a4 = [0, 1, 0, 2, 1]
p adj_prod(a1) # 20
p adj_prod(a2) # 45
p adj_prod(a3) # 36
p adj_prod(a4) # 2