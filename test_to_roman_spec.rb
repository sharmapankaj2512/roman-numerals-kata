require "minitest/autorun"
require "./number"

class TestHiker < MiniTest::Test
  def test_upto_ten
    assert_equal Roman.new("I"), Roman.equivalent_of(1)
    assert_equal Roman.new("II"), Roman.equivalent_of(2)
    assert_equal Roman.new("III"), Roman.equivalent_of(3)
    assert_equal Roman.new("IV"), Roman.equivalent_of(4)
    assert_equal Roman.new("V"), Roman.equivalent_of(5)
    assert_equal Roman.new("VI"), Roman.equivalent_of(6)
    assert_equal Roman.new("VII"), Roman.equivalent_of(7)
    assert_equal Roman.new("VIII"), Roman.equivalent_of(8)
    assert_equal Roman.new("IX"), Roman.equivalent_of(9)
    assert_equal Roman.new("X"), Roman.equivalent_of(10)
  end

  def test_upto_nineteen
    assert_equal Roman.new("XI"), Roman.equivalent_of(11)
    assert_equal Roman.new("XIV"), Roman.equivalent_of(14)
  end
end
