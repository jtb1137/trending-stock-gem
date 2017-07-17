class TrendingStocksGem::Stock

	attr_accessor :name, :last, :high, :low

	def self.current
		self.scrape_stocks
	end

	def self.scrape_stocks
		stocks = []

		doc = Nokogiri::HTML(open("https://www.investing.com/equities/trending-stocks"))
		
		stock = self.new
		stock.name = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(1) > td.left.bold.plusIconTd.elp > a").text
		stock.last = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(1) > td:nth-child(3)").text
		stock.high = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(1) > td:nth-child(4)").text
		stock.low = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(1) > td:nth-child(5)").text
		
		#binding.pry

		#stock_1 = self.new
		#stock_1.name = "JPMorgan"
		#stock_1.last = "91.75"
		#stock_1.high = "92.06"
		#stock_1.low = "90.58"

		#stock_2 = self.new
		#stock_2.name = "AMD"
		#stock_2.last = "85.75"
		#stock_2.high = "86.06"
		#stock_2.low = "84.58"

		#[stock_1, stock_2]
		stocks << stock
	end

end