def oddities(arr)
  count = 0
  new_arr = []

  while count < arr.size
    new_arr.push(arr[count])
    count += 2
  end

  new_arr
end

def eventies(arr)
  arr.select { |element| arr.index(element).odd? }
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

p eventies([2, 3, 4, 5, 6]) == [3, 5]
p eventies([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
p eventies(['abc', 'def']) == ['def']
p eventies([123]) == []
p eventies([]) == []
