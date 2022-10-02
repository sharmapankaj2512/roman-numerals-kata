require 'minitest/autorun'

class TestHiker < MiniTest::Test

  def test_upto_ten
    assert_equal "I", Number.new(1).to_roman
    assert_equal "II", Number.new(2).to_roman
    assert_equal "III", Number.new(3).to_roman
    assert_equal "IV", Number.new(4).to_roman
    assert_equal "V", Number.new(5).to_roman
    assert_equal "VI", Number.new(6).to_roman
    assert_equal "VII", Number.new(7).to_roman
    assert_equal "VIII", Number.new(8).to_roman
    assert_equal "IX", Number.new(9).to_roman
    assert_equal "X", Number.new(10).to_roman
  end
  
  def test_upto_nineteen
    assert_equal "XI", Number.new(11).to_roman
    assert_equal "XIV", Number.new(14).to_roman
  end
  
  class Number
      def initialize(number)
        @number = number
      end
    
      def to_roman
        if @number < 10
          return single_digit(@number)
        end
        if @number == 10
          return "X"
        end
        return "X" + single_digit(@number % 10)
      end
      
      def single_digit(number)
        if number < 4
          return times_one(number)
        end
        if number == 4
          return "IV"
        end
        if number < 9
          return "V" + times_one(number % 5)
        end
        if number == 9
           return "IX"
        end      
      end  
      
      def times_one(times)
        return "I" * times
      end
  end
end
