#
# Complete the 'matchingStrings' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. STRING_ARRAY strings
#  2. STRING_ARRAY queries
#

# Sample input: ["aba", "baba", "aba", "xzxb"], ["aba", "xzxb", "ab"]
# Sample output: [2, 1, 0]

def matchingStrings(strings, queries):
    result=[]
    for q in queries:
        result.append(strings.count(q))
    return result


# Case 1
strings1 = ["aba", "baba", "aba", "xzxb"]
queries1 = ["aba", "xzxb", "ab"]
print(matchingStrings(strings1, queries1))
# expected output = [2, 1, 0]

# Case 2
strings2 = ["def", "de", "fgh"]
queries2 = ["de", "lmn", "fgh"]
print(matchingStrings(strings2, queries2))
# expected output = [1, 0, 1]

# Case 3
strings3 = ["abcde", "sdaklfj", "asdjf", "na", "basdn", "sdaklfj", "asdjf", "na", "asdjf", "na", "basdn", "sdaklfj", "asdjf"]
queries3 = ["abcde", "sdaklfj", "asdjf", "na", "basdn"]
print(matchingStrings(strings3, queries3))
# expected output = [1, 3, 4, 3, 2]