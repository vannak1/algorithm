def find_max_profit(arr_stock_prices)
   loop_iteration = arr_stock_prices.length - 1
   max_profit = 0

   loop_iteration.times do |i|
     buy_price = arr_stock_prices.shift
     arr_stock_prices.each do |j|
       potential_profit = buy_price - j
       max_profit = [potential_profit, max_profit].max
     end
    end

    max_profit
end
