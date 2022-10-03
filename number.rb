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
    return "LX" if decimal >= 60
    return "L" if decimal >= 50
    return "XL" if decimal >= 40
    return times_ten(decimal / 10)
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

  def self.times_ten(times)
    return "X" * times
  end
end
