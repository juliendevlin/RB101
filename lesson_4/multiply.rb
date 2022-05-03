def multiply(numbers, multiplier)
  multiplied_results = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    multiplied_results << current_number * multiplier

    counter += 1
  end

  multiplied_results
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]
