class CreditCard

  attr_reader :cardnumber

  def initialize (cardnumber)
    @cardnumber = cardnumber
  end

  def create_integer_array
    @cardnumber.to_i.digits.drop(1)
  end


  # def remove_first_number
  #   @cardnumber.drop(1)
  # end

  def double_evens
    @cardnumber.map.with_index do |number, index|
      if index % 2 == 0
        number * 2
      else
        number
      end
    end
  end

    def modify_over_ten
      @cardnumber.map do |number|
        if number >= 10
        number -= 9
        else
        number
        end
      end
    end

def sum_the_numbers
  @cardnumber.inject(0) do |sum, n|
     sum + n
   end
end

def return_valid
  if @cardnumber % 10 == 0
    @cardnumber = "The card is valid!"
  else
    @cardnumber = "The cards is not valid!"
  end
end

end


card = CreditCard.new ("492973547750543")

card1 = card.create_integer_array

card1 = card.double_evens

card_modified = card_double_evens.modify_over_ten

card_sum = card_modified.sum_the_numbers

card_valid = card_sum.return_valid
