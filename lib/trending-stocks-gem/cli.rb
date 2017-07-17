class TrendingStocksGem::CLI
	
	def call
		#TrendingStocksGem::Scraper ??????
		puts "Today's Trending Stocks"
		list_stocks
		menu
		exit
	end

	def list_stocks
		@stocks = TrendingStocksGem::Stock.current
		@stocks.each.with_index(1) do |stock, i|
			puts "#{i}. #{stock.name} - Last: #{stock.last} - High: #{stock.high} - Low: #{stock.low}"
		end
	end

	def menu
		input = nil
		while input != 'exit'
			puts "Type 'exit' to quit at any time."
			puts "Type 'list' to view the list of stocks."
			puts "Enter the number of the stock you would like to know more about:"
			
			input = gets.strip.downcase
			if input.to_i > 0
				this_stock = @stocks[input.to_i - 1]
				print_stock
			elsif input == "list"
				list_stocks
			elsif input == "exit"
				exit
			end
		end
	end

	def print_stock(this_stock)
		puts ""
		puts "----------- #{this_stock.name} -----------"
		puts ""
		puts "Last:           #{this_stock.location}"
		puts "Low:            #{this_stock.head_chef}"
		puts "High:           #{this_stock.contact}"
		puts "Change:         #{this_stock.change}"
		puts "Change %:       #{this_stock.change_percent}" 
		puts "Trade Volume:   #{this_stock.volume}"
	end

	def exit
		puts "Session complete."
	end

end