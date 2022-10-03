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
      tens_place(decimal) + ones_place(decimal % 10))
  end

  def self.tens_place(decimal)
    return "XC" if decimal == 90
    return "L" + times_ten((decimal % 50) / 10) if decimal >= 50
    return "XL" if decimal >= 40
    return times_ten(decimal / 10)
  end

  def self.ones_place(number)
    return "IX" if number == 9
    return "V" + times_one(number % 5) if number >= 5
    return "IV" if number == 4
    return times_one(number)
  end

  def self.times_one(times)
    return "I" * times
  end

  def self.times_ten(times)
    return "X" * times
  end
end
