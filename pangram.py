# Complete the function pangrams in the editor below. It should return the string pangram if the input string is a pangram. Otherwise, it should return not pangram.

# pangrams has the following parameter(s):

# string s: a string to test
# Returns

# string: either 'pangram' or 'not pangram'

# constraints:
# 0 < len(s) < 10^3
# s consists of English letters (i.e., a through z and A through Z) and spaces.

def pangrams(s):
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    for letter in alphabet:
        if letter not in s.lower():
            return 'not pangram'
    return 'pangram'


print(pangrams('the quick brown fox jumps over the lazy dog'))
print(pangrams('the quick brown fox jumps over the lazy do'))
print(pangrams('We promptly judged antique ivory buckles for the next prize'))
print(pangrams('12345'))