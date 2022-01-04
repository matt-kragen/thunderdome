def palindrome(int):
  string = str(int)
  if (string == string[::-1]):
    return True
  else:
    return False


int1 = 1234321  # true
int2 = 1234567  # false
int3 = 12344321  # true
int4 = 0  # true
int5 = 888777888  # true
print(palindrome(int1))
print(palindrome(int2))
print(palindrome(int3))
print(palindrome(int4))
print(palindrome(int5))