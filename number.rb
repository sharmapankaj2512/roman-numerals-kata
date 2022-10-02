class Roman
  def initialize(decimal)
    @decimal = decimal
  end

  def self.equivalent_of(decimal)
    return Roman.new(decimal)
  end

  def notation()
    return to_roman
  end

  def to_roman
    if @decimal < 10
      return single_digit(@decimal)
    end
    if @decimal == 10
      return "X"
    end
    return "X" + single_digit(@decimal % 10)
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
