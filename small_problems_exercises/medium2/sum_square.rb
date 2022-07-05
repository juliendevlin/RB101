def sum_square_difference(n)
  if sum_squared(n) > squared_sum(n)
    sum_squared(n) - squared_sum(n)
  else
    squared_sum(n) - sum_squared(n)
  end
end

def sum_squared(n)
  sum = 0

  1.upto(n) do |num|
    sum += num
  end

  sum**2
end

def squared_sum(n)
  sum = 0

  1.upto(n) do |num|
    sum += num**2
  end

  sum
end

p sum_square_difference(3) == 22
# -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150