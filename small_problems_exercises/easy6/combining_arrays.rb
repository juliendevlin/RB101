def merge(arr1, arr2)
  merged_arr = arr1
  
  arr2.each do |element|
    unless merged_arr.include?(element)
      merged_arr << element
    end
  end

  merged_arr
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]