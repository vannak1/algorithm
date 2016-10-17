def find_max_profit(arr_stock_prices)
   #initialize loop count to save execution time
   loop_iteration = arr_stock_prices.length - 1
   max_profit = 0

   loop_iteration.times do |i|
     #returned value from arr set to buy_price and arr is shifted to the right
     buy_price = arr_stock_prices.shift

     #takes the buy price that was popped off and subtracts all numbers after
     arr_stock_prices.each do |j|
       potential_profit = buy_price - j

       #compares each difference to max_profit to find the greater
       max_profit = [potential_profit, max_profit].max
     end
    end

    max_profit
end
