def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_sentence = ''

  while words.empty? == false
    reversed_sentence += words.pop
    unless words.empty?
      reversed_sentence += ' '
    end
  end

  reversed_sentence
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# solution 

def reverse_sentence(string)
  string.split.reverse.join(' ')
end