class ZzoundsDeals::CLI
    attr_accessor :deals
    def call 
        puts "Hello! Here are your daily deals!"
        Scraper.get_deals
        list_items
        menu
        goodbye
    end 

    def list_items 
        @deals = ZzoundsDeals::Deal.all 
        i = 0
        @deals.each do |item|
            puts "#{@deals[i].number}. #{@deals[i].name}"
            puts "     #{@deals[i].details}"
            puts "     Cost: #{@deals[i].price}"
            puts "     Savings: #{@deals[i].savings}"
            puts "     Remaining: #{@deals[i].amt_remain}"
            puts "     URL: #{@deals[i].url}"
            puts ''
            i += 1
        end
        puts "Select the number of the item you would like more information on, type and enter 'list' to return to all of the items, or type and enter 'exit' to leave!"
    end 

    def menu
        input = nil 
        while input != 'exit'
            input = gets.strip 
            if input == 'list'
                list_items
            elsif input == '1'
                puts 'more info on 1'
            end 
        end 
    end 

    def goodbye 
        puts "Thanks for using ZzoundsDeals! Farewell, sweet nugget!"
    end
end