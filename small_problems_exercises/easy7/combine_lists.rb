def interleave(arr1, arr2)
  new_arr = []
  alt_count = 0

  arr1.each do |el|
    new_arr << el
    new_arr << arr2[alt_count]
    alt_count += 1
  end

  new_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# further exploration

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']