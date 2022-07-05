# rotate it to the left
# keep the first digit fixed in place, and rotate the remaining digits
# Keep the first 2 digits fixed in place and rotate again 
# Keep the first 3 digits fixed in place and rotate again
# Finally, keep the first 4 digits fixed in place and rotate the final 2 digits

def rotate_string(str)
  str[1..-1] + str[0]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s
  all_digits[-n..-1] = rotate_string(all_digits[-n..-1])
  all_digits.to_i
end

def max_rotation(digit)
  index_to_rotate = digit.to_s.length
  rotated_digit = digit

  while index_to_rotate > 1
    rotated_digit = rotate_rightmost_digits(rotated_digit, index_to_rotate)
    index_to_rotate -= 1
  end

  rotated_digit
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
