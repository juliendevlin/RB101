DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(int)
  str = ''

  loop do
    int, remain = int.divmod(10)
    str.prepend(DIGITS[remain])
    break if int == 0
  end

  str
end

def signed_integer_to_string(int)
  if int > 0
    '+' + integer_to_string(int)
  elsif int < 0
    '-' + integer_to_string(-int)
  else
    '0'
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'