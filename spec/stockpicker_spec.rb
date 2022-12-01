# frozen_string_literal: true

require './lib/stockpicker'

describe 'stockpicker' do
  it 'takes in an array of stock prices and returns a pair [best_day_to_buy, best_day_to_sell' do
    expect(stockpicker([1, 2])).to eql([3, 4])
  end
end
