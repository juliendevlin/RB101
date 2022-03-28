# original code
# not returning a false condition
# not handling case that there are more or fewer than 4 components (e.g. "4.5.5" or "1.2.3.4.5" should be invalid)

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end

# my solution/fixed code + created is_an_ip_number? method because why not

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")

  if dot_separated_words.size != 4
    return false
  else
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      return false unless is_an_ip_number?(word)
    end
  end
  true
end

def is_an_ip_number?(num)
  if num.to_i.to_s == num && (0..255).include?(num.to_i)
    return true
  else
    return false
  end
end

p dot_separated_ip_address?('1.2.3.4')
p dot_separated_ip_address?('34.243.1.140')
p dot_separated_ip_address?('1.2.3')
p dot_separated_ip_address?('1.2.34.5.5.3.2')
p dot_separated_ip_address?('270.1.1.1')
p dot_separated_ip_address?('hi there')
p dot_separated_ip_address?('hello.world.foo.bar')
