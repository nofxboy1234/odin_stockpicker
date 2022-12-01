# frozen_string_literal: true

require 'pry-byebug'

# binding.pry

# Choose day to buy - must buy first (lowest value with lowest index)
# lowest value with lowest index - array to hash [value, index]
# Choose day to sell (highest value with index > buy_index)

def lowest_value_with_lowest_index(stock_prices)
  puts(stock_prices.each_with_index.to_h { |element, index| [index, element] })
end

def stockpicker(stock_prices)
  [1, 4]
  lowest_value_with_lowest_index(stock_prices)
end

stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
stockpicker stock_prices
