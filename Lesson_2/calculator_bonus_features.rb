require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

LANGUAGE = 'en'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  Kernel.puts("=> #{message}")
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def number?(num)
  integer?(num) || float?(num)
end

def operation_to_message(op)
  word = case op
          when '1'
            'Adding'
          when '2'
            'Substracting'
          when '3'
            'Multiplying'
          when '4'
            'Dividing'
          end
  word
end

prompt('welcome')

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt('valid_name')
  else
    break
  end
end

puts "Hi #{name}!"

loop do # main loop
  number1 = nil
  loop do
    prompt('first_num')
    number1 = Kernel.gets().chomp()

    if number?(number1)
      break
    else
      prompt('invalid_num')
    end
  end

  number2 = nil
  loop do
    prompt('second_num')
    number2 = Kernel.gets().chomp()

    if number?(number2)
      break
    else
      prompt('invalid_num')
    end
  end

  puts <<-MSG
    What operation would you like to perform? 
    1) add 
    2) substract 
    3) multiply 
    4) divide
  MSG

  operator = nil
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('invalid_operator')
    end
  end

  puts "#{operation_to_message(operator)} the two numbers..."

  result = case operator
           when '1'
             number1.to_f() + number2.to_f()
           when '2'
             number1.to_f() - number2.to_f()
           when '3'
             number1.to_f() * number2.to_f()
           when '4'
             number1.to_f() / number2.to_f()
           end

  puts "The result is #{result}"

  prompt('another')
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt('bye')
