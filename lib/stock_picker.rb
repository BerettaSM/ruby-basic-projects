#!/usr/bin/env ruby
# frozen_string_literal: true

# rubocop: disable Metrics/MethodLength
def stock_picker(stock_prices)
  max_profit = cur_best_buy = 0
  most_profitable = nil

  stock_prices.each_with_index do |price, day|
    profit = price - stock_prices[cur_best_buy]

    if profit.negative?
      cur_best_buy = day
    elsif profit > max_profit
      max_profit = profit
      most_profitable = [cur_best_buy, day]
    end
  end

  most_profitable
end
# rubocop: enable Metrics/MethodLength
