words = "the flintstones rock"
capitalize = true

test = words.chars.map do |char|
  if char == ' '
    capitalize = true
    char
  else
    if capitalize == true 
      capitalize = false
      char.upcase
    else 
      char
    end
  end
end.join

p test

# solution
p words.split.map { |word| word.capitalize }.join(' ')