def crunch(str)
  previous_char = nil
  new_str = ''

  str.chars.each do |char|
    new_str << char if previous_char != char
    previous_char = char
  end

  new_str
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
