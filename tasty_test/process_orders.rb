# Write a simple stock exchange that accepts a list of buy / sell orders and returns a list of resulting transactions

# Argument
# The function accepts an array of orders in chronological order.
# Each order is an array of 3 elements: [Action, Quantity, Price]

# Return Value
# The function should return an array of transactions in chronological order.
# Each transaction is an array of doubles with two elements: [Quantity, Price]

# Assumptions:
# There is at least one order
# Action, quantity, and price are always present
# All orders are for the same stock
# O(nlogn) time is acceptable for adding a resting order

# Examples:
# Input: # Buy 3.0 5.0
# Output: [[nil]]

# Input: Sell 3.0 5.0, Buy 3.0 5.0
# Output: 3.0 5.0

# Input: Buy 3.0 5.0, Sell 3.0 5.0
# Output: 3.0 5.0

# Input: Buy 3.0 5.0, Sell 1.0 5.0, Sell 2.0 4.9
# Output: 1.0 5.0, 2.0 5.0


def processOrders(orders)
    return [[nil]] if orders.length == 1
    transactions = []
    buy_orders = []
    sell_orders = []
    orders.each do |order|
        if order[0] == 'Buy'
            buy_orders << order
            if sell_orders.length > 0
                matches = sell_orders.select { |sell_order| sell_order[2] <= order[2] && sell_order[1] >= order[1] }.sort_by { |sell_order| sell_order[2] }
                if matches.length > 0
                    matches.each do |match|
                        if match[1] == order[1]
                            transactions << [order[1], order[2]]
                            sell_orders.delete(match)
                            buy_orders.delete(order)
                            # break
                        elsif match[1] > order[1]
                            transactions << [order[1], order[2]]
                            sell_orders[sell_orders.index(match)][1] -= order[1]
                            buy_orders.delete(order)
                            # break
                        else
                            transactions << [match[1], order[2]]
                            order[1] -= match[1]
                            sell_orders.delete(match)
                        end
                    end
                end
            end
        else
            sell_orders << order
            if buy_orders.length > 0
                matches = buy_orders.select { |buy_order| buy_order[2] >= order[2] && buy_order[1] <= order[1] }.sort_by {|buy_order| buy_order[2] }.reverse
                if matches.length > 0
                    matches.each do |match|
                        if match[1] == order[1]
                            transactions << [order[1], order[2]]
                            buy_orders.delete(match)
                            sell_orders.delete(order)
                            # break
                        elsif match[1] > order[1]
                            transactions << [order[1], order[2]]
                            buy_orders[buy_orders.index(match)][1] -= order[1]
                            sell_orders.delete(order)
                            # break
                        else
                            transactions << [match[1], order[2]]
                            order[1] -= match[1]
                            buy_orders.delete(match)
                        end
                    end
                end
            end
        end
    end
    transactions
end

puts processOrders([['Buy', 3.0, 5.0]]) # [[nil]]
puts processOrders([['Sell', 3.0, 5.0], ['Buy', 3.0, 5.0]]) # [[3.0, 5.0]]
puts processOrders([['Buy', 3.0, 5.0], ['Sell', 3.0, 5.0]]) # [[3.0, 5.0]]
puts processOrders([['Buy', 3.0, 5.0], ['Sell', 1.0, 5.0], ['Sell', 2.0, 4.9]]) # 1.0 5.0, 2.0 5.0