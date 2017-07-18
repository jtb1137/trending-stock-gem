class TrendingStocksGem::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.investing.com/equities/trending-stocks"))
  end 
  
  def scrape_stocks_index
    self.get_page.css("#trendingInnerContent > table > tbody > tr:nth-child(-n+30)")
  end

  def build_stocks
    scrape_stocks_index.each do |s| 
      TrendingStocksGem::Stock.new_from_index(s)
    end  
  end
end