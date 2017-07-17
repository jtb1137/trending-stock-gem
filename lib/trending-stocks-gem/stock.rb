class TrendingStocksGem::Stock

	attr_accessor :name, :last, :high, :low

	def self.current
		self.scrape_stocks
	end

	def self.scrape_stocks

		#doc = Nokogiri::HTML(open("https://www.investing.com/equities/trending-stocks"))

		#doc.css("#trendingInnerContent > table > tbody > tr").each do |tr|
			
		#end

		#stock = self.new
		#stock.name = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(1) > td.left.bold.plusIconTd.elp > a").text
		#stock.last = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(1) > td:nth-child(3)").text
		#stock.high = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(1) > td:nth-child(4)").text
		#stock.low = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(1) > td:nth-child(5)").text



		stocks = []

		doc = Nokogiri::HTML(open("https://www.investing.com/equities/trending-stocks"))
				
		stock = self.new
		stock.name = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(1) > td.left.bold.plusIconTd.elp > a").text
		stock.last = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(1) > td:nth-child(3)").text
		stock.high = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(1) > td:nth-child(4)").text
		stock.low = doc.search("#trendingInnerContent > table > tbody > tr:nth-child(1) > td:nth-child(5)").text
		stocks << stock
		
		
	end

end