def center_of(str)
  if str.size.odd?
    str[str.size / 2]
  elsif str.size.even?
    str[((str.size / 2) - 1), 2]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
