# StockMarket Problem
# ---
#
# Given array of elements representing stock prices over a day.
# Permitted to buy and sell 1 share of a stock.
# Design an algorithm to find the best times to buy and sell.
#
# E.g.
# ---
#
#  StockMarketService.get_max_profit([3,2,10,1]) # => Your max profit will be 8
#  StockMarketService.get_max_profit([10,1,3,2]) # => Your max profit will be 2
#  StockMarketService.get_max_profit([1,5,3,2]) # => Your max profit will be 4

# To execute file, run this command:
# ---
#
#   ruby ./stock_market_service.rb


class StockMarketService
  def self.get_max_profit(price_list)
  buy_price = 0
  sell_price = 0
  max_profit = 0

    price_list.each_with_index do |price, index|

      best_sell = price_list[index..-1].max
      best_profit = (price - best_sell).abs

      if best_profit > max_profit
        max_profit = best_profit
        sell_price = best_sell
        buy_price = price
      end
    end
    puts "You should buy at: #{buy_price}"
    puts "You should sell at: #{sell_price}"
    puts "Your max profit will be: #{max_profit}"
  end
end

stocks = [3, 6, 10, 2, 66, 43, 1, 23]

# Instance Method(No self.method)
# stonks = StockMarketService.new
# print stonks.get_max_profit(stocks)

print StockMarketService.get_max_profit(stocks)
puts