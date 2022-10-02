class Roman
  attr_reader :notation

  def initialize(notation)
    @notation = notation
  end

  def self.equivalent_of(decimal)
    return Roman.new(to_roman(decimal))
  end

  def notation()
    @notation
  end

  def ==(other)
    self.class == other.class &&
      @notation == other.notation
  end

  def self.to_roman(decimal)
    if decimal < 10
      return single_digit(decimal)
    end
    if decimal == 10
      return "X"
    end
    return "X" + single_digit(decimal % 10)
  end

  def self.single_digit(number)
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

  def self.times_one(times)
    return "I" * times
  end
end
