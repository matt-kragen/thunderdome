# Write a method/function that takes a time-ordered list of stock
# prices for one particular company and returns the indices at which
# the times you would buy/sell the stock in order to maximize profit.

# Example: [30, 50, 10, 70] should return [2, 3]
# Example: [30, 1000, 10, 70] should return [0, 1]
# Example: [20, 10, 50, 100, 90, 10, 40, 70] should return [1, 3]
# Example: [100, 10, 10, 10, 70] should return [3, 4]
# Example: [100, 20, 100, 10, 20] should return [1, 2]

# Initial Attempt
# def max_profit(arr)
#   buy = 0
#   sell = 0
#   max_profit = 0
#   arr.each_with_index do |buy_value, buy_index|
#     arr.each.with_index(buy_index + 1) do |sell_value, sell_index|
#       profit = sell_value - buy_value
#       if profit > max_profit 
#         max_profit = profit
#         buy = buy_index
#         sell = sell_index
#       end
#     end
#   end
#   [buy, sell]
# end

# Second Attempt
def max_profit(arr)
  buy = 0
  sell = 0
  max_profit = 0
  arr.each_with_index do |buy_value, buy_index|
    arr[buy_index + 1..-1].each_with_index do |sell_value, sell_index|
      profit = sell_value - buy_value
      if profit > max_profit 
        max_profit = profit
        buy = buy_index
        sell = buy_index + sell_index + 1
        # This took me a while to figure out, but I found that it was
        # necessary to add the buy_index and 1 to the sell_index to
        # account for the fact that we are starting at the index of the
        # buy value
      end
    end
  end
  [buy, sell]
end

a1 = [30, 50, 10, 70] 
a2 = [30, 1000, 10, 70] 
a3 = [20, 10, 50, 100, 90, 10, 40, 70] 
a4 = [100, 10, 10, 10, 70] 
a5 = [100, 20, 100, 10, 20] 
p max_profit(a1) # should return [2, 3]
p max_profit(a2) # should return [0, 1]
p max_profit(a3) # should return [1, 3]
p max_profit(a4) # should return [3, 4] but returns [1, 4], which technically references the same number (i.e. 10)
p max_profit(a5) # should return [1, 2]