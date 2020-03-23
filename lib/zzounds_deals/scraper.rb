require 'open-uri'

class Scraper 

    def self.get_deals 
        doc = Nokogiri::HTML(open('https://www.zzounds.com/blowouts')).css('div#super-hot').css('div.span-63.prepend-top.prepend-1.append-1').css('div.span-20.featured-prod')
        i = 0
        length = doc.length
        length.times do

            name = doc.css('a')[i].text
            details = doc.css('span.span-15.last.clear')[i].text
            price = doc.css('div.span-15.last.clear').css('span.price')[i].text
            amt_remain = doc.css('div.span-15.last.bd')[i].text.split.select{|x| x.to_i > 0 && x.length == 1}[0]
            savings = doc.css('div.span-15.last.bd')[i].text.split.select{|x| x[0] == '$'}[1]
            url = doc.css('a')[i].attr('href')
            puts savings
            ZzoundsDeals::Deal.new(name, price, details, amt_remain, url, savings)

            i += 1
        end
    end 

    def self.more_info(deal)
        doc = Nokogiri::HTML(open(deal.url))
        description = doc.css('div.span-43.prepend-1.prepend-top').css('div #tabs-bd-container')
        overview = description.css('div#tab-product-overview').text
        specs = description.css('div#tab-product-specs').text
        payments = (deal.price.gsub('$', '').to_f/6).ceil(2)
        puts "6 monthly payments of $#{payments}"
        puts "Type number for more information: "
        puts "1. Overview"
        puts "2. Specs"
        puts "3. Reviews"
        puts "4. Return to List"
        puts "5. Exit Application"
        input = nil
        while input != '5'
            input = gets.strip.to_i
            case input 
                when 0 
                    "Please enter valid number for more information. Enter 4 to return to list, or 5 to exit the application."
                when 1
                    puts "#{overview}"
                when 2 
                    puts "#{specs}"
                when 3 
                    puts "#{reviews}"
                when 4 
                    input = '5'
                when 5 
                    exit
            end
        end
    end 
end 