def repeater(str)
  doubled_str = ''

  str.chars.each do |char|
    doubled_str << char * 2
  end
  
  doubled_str
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''