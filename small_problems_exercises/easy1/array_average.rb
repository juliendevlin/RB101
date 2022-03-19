def average(arr)
  sum = 0
  count = 0

  arr.each do |num|
    sum += num
    count += 1
  end

  average = sum / count
  average
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# further exploration
def average(arr)
  sum = 0
  count = 0

  arr.each do |num|
    sum += num
    count += 1
  end

  average = sum.to_f / count.to_f
  average
end

puts average([1, 6])
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])