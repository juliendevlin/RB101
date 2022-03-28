# puts "the value of 40 + 2 is " + (40 + 2)
# => error because of TypeError, can't concatenate integer and string

# fix 1
puts "the value of 40 + 2 is #{40 + 2}"

# fix 2
puts "the value of 40 + 2 is " + (40 + 2).to_s