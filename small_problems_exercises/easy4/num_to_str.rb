DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(int)
  digits = []
  remain = 10
  divide = 1

  loop do
    digits << ((int % remain) / divide)
    break if (int % remain) == int
    remain *= 10
    divide *= 10
  end

  digits.map { |digit| DIGITS[digit] }.inject(:+).reverse
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

# could have used #divmod(10) => returns number from division and remainder
