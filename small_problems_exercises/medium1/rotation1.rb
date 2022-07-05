def rotate_array(arr)
  rotated_arr = arr[1..-1]
  first_element = arr[0]
  
  rotated_arr.append(first_element)

  rotated_arr
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# further exploration: rotate string

def rotate_string(str)
  str[1..-1] + str[0]
end

p rotate_string('abc') == 'bca'

# further exploration: rotate integer

def rotate_integer(int)
  rotate_string(int.to_s).to_i
end

p rotate_integer(12345) == 23451
