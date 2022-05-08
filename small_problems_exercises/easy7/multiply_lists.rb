def multiply_list(arr1, arr2)
  multiplied_list = []

  arr1.zip(arr2) { |subarr| multiplied_list << subarr.inject(:*) }

  multiplied_list
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# further exploration

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map {|el| el.inject(:*) }.flatten
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
