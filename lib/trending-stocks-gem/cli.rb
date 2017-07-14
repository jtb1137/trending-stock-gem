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
		input = nil
		while input != 'exit'
			puts "Type 'exit' to quit at any time."
			puts "Type 'list' to view the list of stocks."
			puts "Enter the number of the stock you would like to know more about:"
			input = gets.strip.downcase
			case input
			when input = "1"
				puts "More info on stock 1"
			when input = "2"
				puts "More info on stock 2"
			when input = "3"
				puts "More info on stock 3"
			when input = "4"
				puts "More info on stock 4"
			when input = "5"
				puts "More info on stock 5"
			when input = "6"
				puts "More info on stock 6"
			when input = "7"
				puts "More info on stock 7"
			when input = "8"
				puts "More info on stock 8"
			when input = "9"
				puts "More info on stock 9"
			when input = "10"
				puts "More info on stock 10"
			when input = "list"
				list_stocks
			when input = "exit"
				sign_off
			end
		end
	end

	def sign_off
		puts "Session completed."
	end

end