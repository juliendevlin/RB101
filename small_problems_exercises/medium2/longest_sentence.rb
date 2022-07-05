text = File.read("four_scores.txt")
sentences = text.split(/\.|\?|!/)


longest_sentence = ''
sentences.each do |sentence|
  if sentence.split.size > longest_sentence.split.size
    longest_sentence = sentence
  end
end

puts longest_sentence
puts "The longest sentence is #{longest_sentence.split.size} words long"

text = File.read("book.txt")
sentences = text.split(/\.|\?|!/)

longest_sentence = ''
sentences.each do |sentence|
  if sentence.split.size > longest_sentence.split.size
    longest_sentence = sentence
  end
end

puts longest_sentence
puts "The longest sentence is #{longest_sentence.split.size} words long"
