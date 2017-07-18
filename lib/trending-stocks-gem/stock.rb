class TrendingStocksGem::Stock
	attr_accessor :name, :last, :high, :low, :change, :change_percent, :volume, :market_cap, :roi, :beta, :hourly, :daily, :monthly

	@@all = []

	def initialize(name=nil, last=nil, high=nil, low=nil, change=nil, change_percent=nil)
		@name = name
		@last = last
    	@high = high
    	@low = low
    	@change = change
    	@change_percent = change_percent
    	@@all << self
	end

	def self.new_from_index(s)
		self.new(
			s.css("td.left.bold.plusIconTd.elp > a").text, 
      		s.css("td:nth-child(3)").text,
      		s.css("td:nth-child(4)").text,
      		s.css("td:nth-child(5)").text,
      		s.css("td:nth-child(6)").text	
      		)
	end

	def self.all
		@@all
	end

	def self.find(index)
		self.all[index.to_i-1]
	end
end	