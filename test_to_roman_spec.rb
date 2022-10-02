require 'minitest/autorun'
require './number'

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
end
