def stockpicker(stock_prices)
prices = stock_prices
best_profits = []

	prices.each { |buy| 
		
			profit_check = []	
			prices.each { |sell|  

				profit_check << (buy-sell) * -1

				}

			best_profits << profit_check.max
			prices.shift
			}
buy_day = best_profits.index(best_profits.max)

end



#NOTES - IGNORE

#stockpicker([17,3,6,9,15,8,6,1,10])

#Take each day's price starting with day 0 and enumerate it over each day after it. Take the highest value from these pairs and 
#store it in an array? Once you have all the buy/sell pairs take the highest value'd buy/sell as your output
#profit_check = [0,3,6,12,5,3,-2,7]

#best_profits = [0, 12, x, x, x, x, x, x, x]
#stock_prices.values_at(buy_day)