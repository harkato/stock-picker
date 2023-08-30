prices = [17,3,6,9,15,8,6,1,1]


def stock_picker(prices)
  best_buy_day, best_sell_day = 0
  best_profit = 0
  min_price = prices[0]

  prices.each_with_index do |price, day|
    if price < min_price
      min_price = price
    elsif price - min_price > best_profit
      best_profit = price - min_price
      best_buy_day = min_price
      best_sell_day = price 
    end
  end
  sell_day = prices.index(best_sell_day)
  buy_day = prices.index(best_buy_day)
  [buy_day, sell_day]
end

puts stock_picker(prices)