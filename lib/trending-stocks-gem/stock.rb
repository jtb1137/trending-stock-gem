class TrendingStocksGem::Stock

	attr_accessor :name, :last, :high, :low

	def self.current
		self.scrape_stocks
	end

	def self.scrape_stocks
		stocks = []

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
		stocks
	end

end