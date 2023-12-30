#!/usr/bin/env ruby

def stock_picker stock_prices
  max_profit = cur_best_buy = 0
  most_profitable = nil

  stock_prices.each_with_index do |price, day|
    profit = price - stock_prices[cur_best_buy]

    if profit < 0
      cur_best_buy = day
    elsif profit > max_profit
      max_profit = profit
      most_profitable = [cur_best_buy, day]
    end
  end

  most_profitable
end

p stock_picker([17,3,6,9,15,8,6,1,10]) # -> [1,4]
p stock_picker([8,5,4,3,2,8,10,29,5])  # -> [4,7]
p stock_picker([7,9,14,9,15,8,6,8,15]) # -> [6,8]
