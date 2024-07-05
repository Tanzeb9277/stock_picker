require 'spec_helper'
require_relative '../lib/stock_picker'


RSpec.describe 'Stock Picker Project' do
  describe 'get pair of days representing the best day to buy and the best day to sell' do
    it 'can find best day to buy and sell' do
      expected_output = [3, 4]
      expect(stock_picker([34, 22, 45, 12, 56, 1])).to eq(expected_output)
    end

    # remove the 'x' from the line below to unskip the test
    it 'can work with edge cases like when the lowest day is the last day or the highest day is the first day' do
      expected_output = [1, 6]
      expect(stock_picker([17,3,6,9,15,8,20,1,10])).to eq(expected_output)
    end

  end
end
