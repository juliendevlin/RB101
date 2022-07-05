def featured(num)
  featured = false
  num_to_check = num + 1
  featured_num = nil

  while featured == false
    if num_to_check % 7 == 0 && num_to_check.odd? && num_to_check.to_s.chars.uniq.size == num_to_check.to_s.chars.size
      featured_num = num_to_check
      featured = true
    elsif num_to_check.to_s.size > 10
      return "=> ERROR. There is no possible featured number."
    else
      num_to_check += 1
    end
  end

  featured_num
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements