def string_to_integer(str)
  split_str = str.split('')
  length = split_str.size
  int = 0

  split_str.each do |num|
    int += (string_to_digit(num) * (10**(length - 1)))
    length -= 1
  end

  int
end

def string_to_digit(digit)
  case digit
  when '1' then 1
  when '2' then 2
  when '3' then 3
  when '4' then 4
  when '5' then 5
  when '6' then 6
  when '7' then 7
  when '8' then 8
  when '9' then 9
  when '0' then 0
  end
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

# Solution much more elgantly uses a CONSTANT hash to hold str/digit conversions...
# Remember string#chars splits all characters into an array
# More elegantly creates the int by just doing 10 * current value + digit

# further exploration... converts a str representing hexadecimal number into integer :O

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15,
  'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15
}

def hexadecimal_to_integer(str)
  digits = str.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 16 * value + digit }

  value
end

p hexadecimal_to_integer('4D9f') == 19871