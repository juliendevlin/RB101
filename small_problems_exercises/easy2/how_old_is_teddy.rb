def print_age(person = 'Teddy')
  person = 'Teddy' if person == ''
  
  ages = (20..200).to_a
  puts "#{person} is #{ages.sample} years old!"
end

puts "What is your name?"
name = gets.chomp

print_age(name)

# solution uses rand(20..200)
