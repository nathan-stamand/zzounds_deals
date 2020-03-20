require 'open-uri'

class Scraper 

    def self.get_deals 
        doc = Nokogiri::HTML(open('https://www.zzounds.com/blowouts'))
    end 
end 