def rotate_string(str)
  str[1..-1] + str[0]
end

def rotate_rightmost_digits(digit, number_of_digits)
  portion_to_rotate = digit.to_s[-number_of_digits..-1]
  portion_to_save = digit.to_s[0..(-number_of_digits - 1)]

  rotated_portion = rotate_string(portion_to_rotate)
  rotated_string = portion_to_save << rotated_portion
  rotated_integer = rotated_string.to_i

  rotated_integer
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

# altered solution 

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s
  all_digits[-n..-1] = rotate_string(all_digits[-n..-1])
  all_digits.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
