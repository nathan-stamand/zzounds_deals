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
        @deals.each do |deal|
            format(deal)
            i += 1
        end
        puts "Select the number of the item you would like more information on, type and enter 'list' to return to all of the items, or type and enter 'exit' to leave!"
    end 

    def format(deal)
        puts "#{deal.number}. #{deal.name}"
            puts "     #{deal.details}"
            puts "     Cost: #{deal.price}"
            puts "     Savings: #{deal.savings}"
            puts "     Remaining: #{deal.amt_remain}"
            puts "     URL: #{deal.url}"
            puts ''
    end

    def menu
        puts '...'
        input = nil 
        while input != 'exit'
            input = gets.strip 
            if input == 'list'
                list_items
            elsif input.to_i > 0 && input.to_i <= @deals.length
                input = input.to_i - 1
                puts "#{format(@deals[input])}"
                Scraper.more_info(@deals[input])
                list_items
            elsif input.to_i == 0 || input.to_i > @deals.length
                puts "Please select a valid option from the numbers on the list, or type 'list' or 'exit'"
            end 
        end 
    end 

    def goodbye 
        puts "Thanks for using ZzoundsDeals! Farewell, sweet nugget!"
    end
end