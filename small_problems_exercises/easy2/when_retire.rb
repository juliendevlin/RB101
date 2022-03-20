def prompt(str)
  puts ">> " + str
end

def year_of_retirement(age, goal)
  Time.now.year + (goal - age)
end

def years_left(age, goal)
  goal - age
end

prompt('What is your age?')
age = gets.chomp.to_i

prompt('At what age would you like to retire?')
goal = gets.chomp.to_i

prompt("It's #{Time.now.year}. You will retire in #{year_of_retirement(age, goal)}.")
prompt("You only have #{years_left(age, goal)} years of work to go!")
