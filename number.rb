class Roman
  attr_reader :notation

  def initialize(notation)
    @notation = notation
  end

  def self.equivalent_of(decimal)
    return Roman.new(to_roman(decimal))
  end

  def ==(other)
    self.class == other.class &&
      @notation == other.notation
  end

  def self.to_roman(decimal)
    return single_digit(decimal) if decimal < 10
    return "X" + single_digit(decimal % 10)
  end

  def self.single_digit(number)
    return times_one(number) if number < 4
    return "IV" if number == 4
    return "V" + times_one(number % 5) if number < 9
    return "IX" if number == 9
  end

  def self.times_one(times)
    return "I" * times
  end
end
