class TrendingStocksGem::CLI
	
	def call
		TrendingStocksGem::Scraper.new.build_stocks
		puts ""
		puts "----------- TODAYS TRENDING STOCKS -----------"
		puts ""
		menu
	end

	def menu
		list_stocks
		puts ""
		puts "Which stock would you like to know more about?"
		input = gets.strip
		
		stock = TrendingStocksGem::Stock.find(input)
		display_stock_info(stock)

		puts ""
		puts 'To return to the list of stocks, type "list"'
		puts 'To exit, type "exit"' 

		input = input.strip.downcase
		if input == "list"
			menu
		else
			exit
		end
	end

	def list_stocks
		TrendingStocksGem::Stock.all.each.with_index(1) do |stock, i|
      		puts "#{i}. #{stock.name} - Last: #{stock.last} - Change: #{stock.change}"
    	end
  	end

	def display_stock_info(stock)
		puts ""
	    puts "----------- #{stock.name} -----------"
	    puts ""
	    puts "Last:           #{stock.last}"
	    puts "High:           #{stock.high}"
	    puts "Low:            #{stock.low}"
	    puts "Change:         #{stock.change}"
	    puts "Change %:       #{stock.change_percent}" 
	    puts "Trade Volume:   #{stock.volume}"
	    puts ""
	    #puts "Market Cap:     #{@this_stock.market_cap}"
	    #puts "ROI:         #{@this_stock.roi}"       
	    #puts "Beta:           #{@this_stock.beta}" 
	    #puts "----------- Technical Analysis -----------"
	    #puts "Hourly:         #{}"
	    #puts "Daily:          #{}"
	    #puts "Monthly:        #{}"
  	end

end