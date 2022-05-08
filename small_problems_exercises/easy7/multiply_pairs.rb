def multiply_all_pairs(arr1, arr2)
  all_pairs = []

  arr1.each do |el|
    arr2.size.times do |n|
      all_pairs << el * arr2[n]
    end
  end

  all_pairs.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]