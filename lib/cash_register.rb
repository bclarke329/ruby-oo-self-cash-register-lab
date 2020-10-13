require 'pry'

class CashRegister

    attr_accessor :total, :discount 

    def initialize(discount=0)
        @total = 0 
        @discount = discount
        @items = []
        @last_items = []

    end 
 
    def add_item(title, price, quantity = 1)
        self.total = total + (price * quantity)
        self.total
        i = 0
        while i < quantity
            @items << title
        i += 1
        end 
        @last_items << [title,price,quantity]
    end 

    def apply_discount
        if self.discount == 20
            self.total = ( total - (discount.to_f/100) * total)
            self.total
          "After the discount, the total comes to $#{self.total.to_i}."
        else
            "There is no discount to apply."
        end 
    end

    def items
     @items
    end 

    def void_last_transaction
       self.total = @total - @last_items.last[1]*@last_items.last[2]
    end 

end 