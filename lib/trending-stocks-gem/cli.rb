class TrendingStocksGem::CLI
	
	def call
		#TrendingStocksGem::Scraper ??????
		puts "Today's Trending Stocks"
		list_stocks
		menu
		exit
	end

	def list_stocks
		puts "1. AMD - Last: 58.71 - Low: 56.03 - High: 59.42"
		puts "2. Apple - Last: - Low - High"
	end

	def menu
		input = nil
		while input != 'exit'
			puts "Type 'exit' to quit at any time."
			puts "Type 'list' to view the list of stocks."
			puts "Enter the number of the stock you would like to know more about:"
			
			input = gets.strip.downcase
			if input.to_i > 0
				print_stock
			elsif input == "list"
				list_stocks
			elsif input == "exit"
				exit
			end
		end
	end

	def print_stock(stock)
		puts ""
		puts "----------- #{stock.name} -----------"
		puts ""
		puts "Last:           #{stock.location}"
		puts "Low:            #{stock.head_chef}"
		puts "High:           #{stock.contact}"
		puts "Change:         #{stock.change}"
		puts "Change %:       #{stock.change_percent}" 
		puts "Trade Volume:   #{stock.volume}"
	end

	def exit
		puts "Session complete."
	end

end