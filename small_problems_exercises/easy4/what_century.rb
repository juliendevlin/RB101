def century(year)
  count = 0

  while year > 0
    year -= 100
    count += 1
  end

  if count.to_s[-2] == '1'
    count.to_s + 'th'
  elsif count.to_s[-1] == '1'
    count.to_s + 'st'
  elsif count.to_s[-1] == '2'
    count.to_s + 'nd'
  elsif count.to_s[-1] == '3'
    count.to_s + 'rd'
  else
    count.to_s + 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

# solution breaks it down into two methods: one for finding century, other for finding suffix
# solution uses modulo (%10 and %100) to find last digits
# solution more uses case statement
