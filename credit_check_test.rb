require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/credit_check"

class CreditCardTest < Minitest::Test



   def test_create_integer_array
     card = ("492973547750543")
     assert_equal [3,4,5,0,5,7,7,4,5,3,7,9,2,9,4],
       create_integer_array(card)
   end


   def test_double_evens
     card = [3,4,5,0,5,7,7,4,5,3,7,9,2,9,4]
     assert_equal [3,8,5,0,5,14,7,8,5,6,7,18,2,18,4] , double_evens(card)
   end


   def test_modify_over_ten
     card = [3,8,5,0,5,14,7,8,5,6,7,18,2,18,4]
     assert_equal [3,8,5,0,5,5,7,8,5,6,7,9,2,9,4], modify_over_ten(card)
   end

   def test_sum_the_numbers
     card = [3,8,5,0,5,5,7,8,5,6,7,9,2,9,4]
     assert_equal 83 , sum_the_numbers(card)
  end

  def test_return_valid
    card = 83
    assert_equal "The card is not valid!", return_valid(card)
  end

  def test_luhn
    card_1 = "5541808923795240"
    card_2 = "4024007136512380"
    card_3 = "6011797668867828"
    card_4 = "5541801923795240"
    card_5 = "4024007106512380"
    card_6 = "6011797668868728"
    card_7 = "342804633855673"
    card_8 = "342801633855673"
    assert_equal "The card is valid!" , luhn(card_1)
    assert_equal "The card is valid!" , luhn(card_2)
    assert_equal "The card is valid!" , luhn(card_3)
    assert_equal "The card is not valid!" , luhn(card_4)
    assert_equal "The card is not valid!" , luhn(card_5)
    assert_equal "The card is not valid!" , luhn(card_6)
    assert_equal "The card is valid!" , luhn(card_7)
    assert_equal "The card is not valid!" , luhn(card_8)

  end

end
