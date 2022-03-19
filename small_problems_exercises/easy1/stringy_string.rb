def stringy(num, type = 1)
  if type == 1
    start_with_one(num)
  elsif type == 0
    start_with_zero(num)
  end
end

def start_with_one(num)
  count = 0
  string = ''

  while count < num do
    count += 1
    if count % 2 == 0
      string << "0"
    else
      string << "1"
    end
  end

  string
end

def start_with_zero(num)
  count = 0
  string = ''

  while count < num do
    count += 1
    if count % 2 == 0
      string << "1"
    else
      string << "0"
    end
  end

  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(6, 0) == '010101'
puts stringy(9, 0) == '010101010'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'
