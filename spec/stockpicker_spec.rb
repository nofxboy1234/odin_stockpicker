# frozen_string_literal: true

require './lib/stockpicker'

describe 'stockpicker' do
  it 'takes in an array of stock prices and returns a pair [best_day_to_buy, best_day_to_sell' do
    stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
    expect(stockpicker(stock_prices)).to eql([1, 4])
  end

  it 'returns correct buy_sell pair if the lowest day is the last day' do
    stock_prices = [17, 3, 6, 9, 15, 8, 6, 10, 1]
    expect(stockpicker(stock_prices)).to eql([1, 4])
  end

  it 'returns correct buy_sell pair if the highest day is the first day' do
    stock_prices = [17, 3, 6, 9, 15, 8, 6, 10, 1]
    expect(stockpicker(stock_prices)).to eql([1, 4])
  end

  it 'returns correct buy_sell pair if there are days with the same value' do
    stock_prices = [17, 3, 6, 15, 15, 8, 6, 10, 1]
    expect(stockpicker(stock_prices)).to eql([1, 3])
  end

  it 'returns an empty pair if all days have the same value' do
    stock_prices = [17, 17, 17, 17, 17, 17, 17, 17, 17]
    expect(stockpicker(stock_prices)).to eql([])
  end

  it 'returns a single pair if there are only 2 days' do
    stock_prices = [17, 18]
    expect(stockpicker(stock_prices)).to eql([0, 1])
  end

  it 'returns an empty pair if there are only 2 days with a declining profit' do
    stock_prices = [18, 17]
    expect(stockpicker(stock_prices)).to eql([])
  end

  it 'returns an empty pair if there is only 1 day' do
    stock_prices = [17]
    expect(stockpicker(stock_prices)).to eql([])
  end
end
