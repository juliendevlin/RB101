def prompt(str)
  puts ">> " + str
end

def greet_user(name)
  if name[-1] == "!"
    puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
  else
    puts "Hello #{name}."
  end
end

prompt("What is your name?")
name = gets.chomp

greet_user(name)

# further exploration
print 'What is your name? '
name = gets.chomp!

if name[-1] == '!'
  name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  name.chomp!
  puts "Hello #{name}."
end
