def bubble_sort!(arr)
  elements_swapped = true

  while elements_swapped == true
    elements_swapped = false
    
    arr.each_with_index do |value, index|
      if index == arr.size - 1
        next
      elsif value > arr[index + 1]
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
        elements_swapped = true
      end
    end
  end

  arr
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)