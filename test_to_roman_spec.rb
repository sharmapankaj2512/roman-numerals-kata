require "minitest/autorun"
require "./number"

class TestHiker < MiniTest::Test
  def test_upto_ten
    assert_equal "I", Roman.equivalent_of(1).notation
    assert_equal "II", Roman.equivalent_of(2).notation
    assert_equal "III", Roman.equivalent_of(3).notation
    assert_equal "IV", Roman.equivalent_of(4).notation
    assert_equal "V", Roman.equivalent_of(5).notation
    assert_equal "VI", Roman.equivalent_of(6).notation
    assert_equal "VII", Roman.equivalent_of(7).notation
    assert_equal "VIII", Roman.equivalent_of(8).notation
    assert_equal "IX", Roman.equivalent_of(9).notation
    assert_equal "X", Roman.equivalent_of(10).notation
  end

  def test_upto_nineteen
    assert_equal "XI", Roman.equivalent_of(11).notation
    assert_equal "XIV", Roman.equivalent_of(14).notation
  end
end
