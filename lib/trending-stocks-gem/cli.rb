class TrendingStocksGem::CLI
	
	def call
		puts "Today's Trending Stocks"
		list_stocks
		menu
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
				puts "#{this_stock.name} - Last: #{this_stock.last} - High: #{this_stock.high} - Low: #{this_stock.low}"
			elsif input == "list"
				list_stocks
			elsif input == "exit"
				sign_off
			end
		end
	end

	def sign_off
		puts "Session completed."
	end

end