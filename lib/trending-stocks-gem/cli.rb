class TrendingStocksGem::CLI
	
	def call
		puts "Today's Trending Stocks"
		list_stocks
		menu
	end

	def list_stocks
		puts "1. JPMorgan - Last: 91.75 - High: 92.06 - Low 90.58"
		puts "2. AMD - "
	end

	def menu
		puts "Enter the number or name of the stock you would like to know more about:"
		input = gets.strip
		case input
		when input = 1
			puts "More info on stock 1"
		end
	end

end