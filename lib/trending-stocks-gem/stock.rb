class TrendingStocksGem::Stock

	attr_accessor :name, :last, :high, :low

	def self.current
		self.scrape_stocks
	end

	def self.scrape_stocks

		#stocks = []

		#doc = Nokogiri::HTML(open("https://www.investing.com/equities/trending-stocks"))

		#doc.css("#trendingInnerContent > table > tbody > tr").map do |tr|
		#	stock_name = doc.search("td.left.bold.plusIconTd.elp > a").text
		#	stock_last = doc.search("td:nth-child(3)").text
		#	stock_high = doc.search("td:nth-child(4)").text
		#	stock_low = doc.search("td:nth-child(5)").text	
		#	stocks << {name: stock_name, last: stock_last, high: stock_high, low: stock}
		#end



		stocks = []

		doc = Nokogiri::HTML(open("https://www.investing.com/equities/trending-stocks"))
				
		stock = self.new
		stock.name = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(1) > td.left.bold.plusIconTd.elp > a").text
		stock.last = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(1) > td:nth-child(3)").text
		stock.high = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(1) > td:nth-child(4)").text
		stock.low = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(1) > td:nth-child(5)").text
		stocks << stock

		stock = self.new
		stock.name = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(2) > td.left.bold.plusIconTd.elp > a").text
		stock.last = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(2) > td:nth-child(3)").text
		stock.high = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(2) > td:nth-child(4)").text
		stock.low = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(2) > td:nth-child(5)").text
		stocks << stock
		
		stock = self.new
		stock.name = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(3) > td.left.bold.plusIconTd.elp > a").text
		stock.last = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(3) > td:nth-child(3)").text
		stock.high = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(3) > td:nth-child(4)").text
		stock.low = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(3) > td:nth-child(5)").text
		stocks << stock
		
		stock = self.new
		stock.name = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(4) > td.left.bold.plusIconTd.elp > a").text
		stock.last = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(4) > td:nth-child(3)").text
		stock.high = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(4) > td:nth-child(4)").text
		stock.low = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(4) > td:nth-child(5)").text
		stocks << stock

		stock = self.new
		stock.name = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(5) > td.left.bold.plusIconTd.elp > a").text
		stock.last = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(5) > td:nth-child(3)").text
		stock.high = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(5) > td:nth-child(4)").text
		stock.low = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(5) > td:nth-child(5)").text
		stocks << stock

		stock = self.new
		stock.name = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(6) > td.left.bold.plusIconTd.elp > a").text
		stock.last = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(6) > td:nth-child(3)").text
		stock.high = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(6) > td:nth-child(4)").text
		stock.low = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(6) > td:nth-child(5)").text
		stocks << stock

		stock = self.new
		stock.name = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(7) > td.left.bold.plusIconTd.elp > a").text
		stock.last = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(7) > td:nth-child(3)").text
		stock.high = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(7) > td:nth-child(4)").text
		stock.low = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(7) > td:nth-child(5)").text
		stocks << stock

		stock = self.new
		stock.name = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(8) > td.left.bold.plusIconTd.elp > a").text
		stock.last = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(8) > td:nth-child(3)").text
		stock.high = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(8) > td:nth-child(4)").text
		stock.low = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(8) > td:nth-child(5)").text
		stocks << stock

		stock = self.new
		stock.name = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(9) > td.left.bold.plusIconTd.elp > a").text
		stock.last = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(9) > td:nth-child(3)").text
		stock.high = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(9) > td:nth-child(4)").text
		stock.low = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(9) > td:nth-child(5)").text
		stocks << stock

		stock = self.new
		stock.name = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(10) > td.left.bold.plusIconTd.elp > a").text
		stock.last = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(10) > td:nth-child(3)").text
		stock.high = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(10) > td:nth-child(4)").text
		stock.low = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(10) > td:nth-child(5)").text
		stocks << stock
	end

end