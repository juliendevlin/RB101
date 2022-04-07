def print_in_box(str)
  banner_str = str.prepend('| ')
  banner_str << ' |'
  buffer = banner_str.length - 2
  
  puts '+' + ('-' * buffer) + '+'
  puts '|' + (' ' * buffer) + '|'  
  puts banner_str
  puts '|' + (' ' * buffer) + '|' 
  puts '+' + ('-' * buffer) + '+'
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

# further exploration
# truncates if doesn't fit to screen
def print_in_box(message)
  if message.size <= 80
    horizontal_rule = "+#{'-' * (message.size + 2)}+"
    empty_line = "|#{' ' * (message.size + 2)}|"

    puts horizontal_rule
    puts empty_line
    puts "| #{message} |"
    puts empty_line
    puts horizontal_rule
  else
    truncated_message = message[0..79]
    horizontal_rule = "+#{'-' * (truncated_message.size + 2)}+"
    empty_line = "|#{' ' * (truncated_message.size + 2)}|"

    puts horizontal_rule
    puts empty_line
    puts "| #{truncated_message} |"
    puts empty_line
    puts horizontal_rule
  end
end

print_in_box('01234567890123456789012345678901234567890123456789012345678901234567890123456789TOOLONGTOOLONGTOOLONGTOOLONG')

# new line if doesn't fit to screen
def print_in_box(message)
  if message.size <= 80
    horizontal_rule = "+#{'-' * (message.size + 2)}+"
    empty_line = "|#{' ' * (message.size + 2)}|"

    puts horizontal_rule
    puts empty_line
    puts "| #{message} |"
    puts empty_line
    puts horizontal_rule
  else
    horizontal_rule = "+#{'-' * 82 }+"
    empty_line = "|#{' ' * 82 }|"

    puts horizontal_rule
    puts empty_line
    
    truncated_message = ''
    message.chars.each do |char|
      truncated_message << char
      if truncated_message.size == 80
        puts "| #{truncated_message} |"
        truncated_message = ''
      end
    end
    puts "|" + "#{truncated_message}".center(82) + "|"
    puts empty_line
    puts horizontal_rule
  end
end

print_in_box('01234567890123456789012345678901234567890123456789012345678901234567890123456789TOOLONGTOOLONGTOOLONGTOOLONG')
