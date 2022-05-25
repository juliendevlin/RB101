arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]
# => [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]

sorted_arr = arr.sort_by do |sub_arr|
  sub_arr.select { |num| num % 2 != 0 }
end

p sorted_arr