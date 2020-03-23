class ZzoundsDeals::Deal
    attr_accessor :name, :price, :details, :amt_remain, :url, :savings, :number
    @@all = []

    def initialize(name, price, details, amt_remain, url, savings)
        @name = name 
        @price = price 
        @details = details 
        @amt_remain = amt_remain 
        @url = url 
        @savings = savings
        if @savings == nil 
            @savings = 'Not Available'
        end
        @number = @@all.length + 1
        @@all << self
    end
      
    def self.all 
        @@all 
    end

end