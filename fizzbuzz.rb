#
# Complete the 'fizzBuzz' function below.
#
# The function accepts INTEGER n as parameter.
#

def fizzBuzz(n)
    range = (1..n).to_a
    range.each do |i|
        if i % 3 == 0 && i % 5 == 0
            puts "FizzBuzz"
        elsif i % 3 == 0 && i % 5 != 0
            puts "Fizz"
        elsif i % 3 != 0 && i % 5 == 0
            puts "Buzz"
        else
            puts i
        end
    end
end

n1 = 1
n2 = 15
n3 = 8
p fizzBuzz(n1)
p fizzBuzz(n2)
p fizzBuzz(n3)
