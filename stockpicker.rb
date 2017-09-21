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
puts buy_day
end



#NOTES - IGNORE

stockpicker([30,15,3,55,2,14,26])

#Take each day's price starting with day 0 and enumerate it over each day after it. Take the highest value from these pairs and 
#store it in an array? Once you have all the buy/sell pairs take the highest value'd buy/sell as your output
#profit_check = [0,3,6,12,5,3,-2,7]

#best_profits = [0, 12, x, x, x, x, x, x, x]
#stock_prices.values_at(buy_day)