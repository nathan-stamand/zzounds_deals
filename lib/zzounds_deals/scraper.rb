require 'open-uri'

class Scraper 

    def self.get_deals 
        doc = Nokogiri::HTML(open('https://www.zzounds.com/blowouts')).css('div#super-hot').css('div.span-63.prepend-top.prepend-1.append-1')
        i = 0
        length = doc.css('a').length
        length.times do
            name = doc.css('a')[i].text
            details = doc.css('span.span-15.last.clear')[i].text
            price = doc.css('div.span-15.last.clear').css('span')[i].inner_text.strip
            amt_remain = doc.css('div.span-15.last.clear').inner_text.gsub(' ', '').split
            puts amt_remain
            i += 1
        end
    end 
end 