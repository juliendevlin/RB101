statement = "The Flintstones Rock"
frequency_hash = {}

statement.chars.each do |letter|
  if frequency_hash.keys.include?(letter)
    frequency_hash[letter] += 1
  else
    frequency_hash[letter] = 1
  end
end

p frequency_hash
