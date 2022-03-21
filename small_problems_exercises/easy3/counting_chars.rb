def prompt(str)
  puts ">> " + str
end

prompt("Please write word or multiple words:")
words = gets.chomp

chars_count = words.chars.select { |char| char != ' '}.count
prompt("There are #{chars_count} characters in \"#{words}\"")