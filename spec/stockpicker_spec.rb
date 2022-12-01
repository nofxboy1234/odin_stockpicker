# frozen_string_literal: true

require './lib/stockpicker'

describe 'stockpicker' do
  it 'takes in an array of stock prices and returns a pair [best_day_to_buy, best_day_to_sell' do
    stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
    expect(stockpicker(stock_prices)).to eql([1, 4])
  end
end
