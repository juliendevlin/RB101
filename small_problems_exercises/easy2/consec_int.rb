def prompt(str)
  puts ">> " + str
end

# using a while loop to compute
def sum(num)
  sum = 0

  while num != 0
    sum += num
    num -= 1
  end

  sum
end

# using #inject to compute
def product(num)
  (1..num).inject(:*)
end

prompt("Please enter an integer greater than 0:")
ceiling = gets.chomp.to_i

prompt("Enter 's' to compute the sum, 'p' to computer the product.")
user_choice = gets.chomp

if user_choice == 's'
  prompt("The sum of the integers between 1 and #{ceiling} is #{sum(ceiling)}.")
elsif user_choice == 'p'
  prompt("The product of the integers between 1 and #{ceiling} is #{product(ceiling)}.")
else
  puts "Oops. Unknown operation."
end
