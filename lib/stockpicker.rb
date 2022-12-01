# frozen_string_literal: true

require 'pry-byebug'

# binding.pry

# For each day - check if the max of the remaining values is greater than that day's value
# If it is, pair its index up with that day's index i.e. [1, 4]
# For each buy_sell pair created, get the difference of their values
# Find the highest difference pair and return it

def stockpicker(stock_prices)
  # binding.pry
  buy_sell = {}

  stock_prices.each_with_index do |value, day|
    remaining_days = stock_prices.slice(day + 1..-1)
    # p remaining_days
    max_val = remaining_days.size.positive? ? remaining_days.max : value
    buy_sell[day] = stock_prices.index(max_val) if max_val > value
  end
  p buy_sell
  # buy_sell.each_pair do |_buy_day, _sell_day|
  #   puts
  # end
end

stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
stockpicker stock_prices
