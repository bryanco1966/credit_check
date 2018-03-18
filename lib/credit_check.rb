

def create_integer_array (card)
       card.to_i.digits
end


def double_evens (card)
    card.map.with_index do |number, index|
      if index % 2 == 1
        number * 2
      else
        number
      end
    end
end


def modify_over_ten (card)
      card.map do |number|
        if number >= 10
        number -= 9
        else
        number
        end
      end
end


def sum_the_numbers (card)
  card.inject(0) do |sum, n|
     sum + n
   end
end


def return_valid (card)
  if card % 10 == 0
    card = "The card is valid!"
  else
    card = "The card is not valid!"
  end
end


def luhn (card)

  step1 = create_integer_array(card)
  step2 = double_evens(step1)
  step3 = modify_over_ten(step2)
  step4 = sum_the_numbers(step3)
  step5 = return_valid(step4)
end





card = ("342801633855673")
valid = luhn(card)
puts valid
