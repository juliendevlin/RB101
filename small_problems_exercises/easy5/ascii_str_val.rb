def ascii_value(str)
  value = 0

  str.chars.each { |char| value += char.ord }

  value
end


p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# further exploration
p 'A'.ord.chr == 'A'
# => returns true
p 'abcdefsdajkfhads;jkf'.ord.chr == 'abcdefsdajkfhads;jkf'
# => returns false  because string#ord returns the ordenal value of the first character in the string (not the whole string)
