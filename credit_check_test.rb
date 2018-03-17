require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/credit_check"

class CreditCardTest < Minitest::Test



  def test_card_number_correct
    card = CreditCard.new ("492973547750543")
    assert_equal "492973547750543", card.cardnumber
  end

   def test_create_integer_array
     card = CreditCard.new ("492973547750543")
     assert_equal [4,5,0,5,7,7,4,5,3,7,9,2,9,4],
       card.create_integer_array
   end

   # def test_remove_first_number
   #   card = CreditCard.new [3,4,5,0,5,7,7,4,5,3,7,9,2,9,4]
   #   assert_equal [4,5,0,5,7,7,4,5,3,7,9,2,9,4], card.remove_first_number
   # end

   def test_double_evens
     card = CreditCard.new [4,5,0,5,7,7,4,5,3,7,9,2,9,4]
     assert_equal [8,5,0,5,14,7,8,5,6,7,18,2,18,4] , card.double_evens
   end


   def test_modify_over_ten
     card = CreditCard.new [8,5,0,5,14,7,8,5,6,7,18,2,18,4]
     assert_equal [8,5,0,5,5,7,8,5,6,7,9,2,9,4], card.modify_over_ten
   end

   def test_sum_the_numbers
     card = CreditCard.new [8,5,0,5,5,7,8,5,6,7,9,2,9,4]
     assert_equal 80 , card.sum_the_numbers
  end

def test_return_valid
  card = CreditCard.new (80)
  assert_equal "The card is valid!", card.return_valid
end
end
