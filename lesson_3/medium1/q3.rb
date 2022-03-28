def factors(number)
    divisor = number
    factors = []

    begin
      factors << number / divisor if number % divisor == 0 # using modulo to verify division does not result in a remainder
      divisor -= 1
    end until divisor == 0
    factors # making sure the method returns the factors array
  end
end

def factors(number)
  divisor = number
  factors = []

  while number > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
end
