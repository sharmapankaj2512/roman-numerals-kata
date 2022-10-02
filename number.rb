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
