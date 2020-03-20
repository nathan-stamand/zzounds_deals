class ZzoundsDeals::CLI

    def call 
        puts "Hello! Here are your daily deals!"
        list_items
        menu
        goodbye
    end 

    def list_items 
        puts "1. Pioneer DJ DDJ-SX3 Professional DJ Controller"
        puts "   $914.95"
        puts "   Blemished"
        puts "   only 1 left!"
        puts "   Save $84.05 off new!"
    end 

    def menu 
        puts "Select the number of the item you would like more information on, type and enter 'list' to return to all of the items, or type and enter 'exit' to leave!"
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