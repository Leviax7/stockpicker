def stockpicker(stock_prices)
prices_buy = stock_prices.clone
prices_sell = stock_prices.clone
best_profits = []
profit_check=[]


	prices_buy.each { |buy| 

			prices_sell.each { |sell|  

				profit_check << sell-buy
				}
			best_profits << profit_check.max
			prices_sell.shift
			profit_check.clear
			}
buy_day = best_profits.index(best_profits.max)

prices_sell = stock_prices.clone

prices_sell.shift(buy_day + 1)

sell_day = stock_prices.index(prices_sell.max)

puts "For maximum profit be sure to buy your stocks on day #{buy_day} and to sell on day #{sell_day}."

end

stockpicker([1,3,6,12,17,1,4,5,18,20,3,6,4])
