def fibonacci(n)
  sequence = [1, 1]

  (n -2).times do  
    sequence << sequence[-1] + sequence[-2]
  end

  sequence[-1]
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501