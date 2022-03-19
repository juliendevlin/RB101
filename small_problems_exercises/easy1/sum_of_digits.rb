# with looping construct
def sum(number)
  sum = 0

  digits = number.digits
  digits.each { |digit| sum += digit }

  sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# without looping construct (i.e. while, until, loop, each)
def sum(number)
  number.digits.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
