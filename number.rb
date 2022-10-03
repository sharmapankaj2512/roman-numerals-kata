class Roman
  attr_reader :notation

  def initialize(notation)
    @notation = notation
  end

  def ==(other)
    self.class == other.class &&
      @notation == other.notation
  end

  def self.equivalent_of(decimal)
    return Roman.new(
      multiple_of_ten(decimal) + multiple_of_one(decimal % 10))
  end

  def self.multiple_of_ten(decimal)
    return "" if decimal < 10
    return "X" if decimal < 20
    return "XX" if decimal < 30
    return "XXX" if decimal < 40
    return "XL" if decimal < 50
    return "L" if decimal < 60
  end

  def self.multiple_of_one(number)
    return times_one(number) if number < 4
    return "IV" if number == 4
    return "V" + times_one(number % 5) if number < 9
    return "IX" if number == 9
  end

  def self.times_one(times)
    return "I" * times
  end
end
