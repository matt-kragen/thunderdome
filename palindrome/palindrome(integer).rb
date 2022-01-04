def palindrome?(int)
  int.to_s == int.to_s.reverse ? true : false
end

int1 = 1234321 # true
int2 = 1234567 # false
int3 = 12344321 # true
int4 = 0 # true
int5 = 888777888 # true
p palindrome?(int1)
p palindrome?(int2)
p palindrome?(int3)
p palindrome?(int4)
p palindrome?(int5)