arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

sortted_arr = arr.map do |arr|
  arr.sort.reverse
end

p sortted_arr