greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# => { a: 'hi there' }
# informal_greeting assigned to greetings[:a], they point to the same object
# object is destructively mutated with <<