def balanced?(str)
  balance = 0

  str.chars.each do |char|
    if char == '('
      balance += 1
    elsif char == ')' && balance <= 0
      return false
    elsif char == ')'
      balance -= 1
    end
  end

  if balance == 0
    return true 
  elsif balance != 0
    return false
  end
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

# further exploration 
def balanced?(string)
  parens = 0
  square = 0
  curly = 0

  string.each_char do |char|
    parens += 1 if char == '('
    square += 1 if char == '['
    curly += 1 if char == '{'
    parens -= 1 if char == ')'
    square -= 1 if char == ']'
    curly -= 1 if char == '}'
    break if parens < 0
    break if square < 0
    break if curly < 0
  end

  parens.zero? && square.zero? && curly.zero? && string.count('"').even?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?(')Hey!(') == false
p balanced?('What [is] this?') == true
p balanced?('What is] this?') == false
p balanced?(']Hey![') == false
p balanced?('What {is} this?') == true
p balanced?('What is} this?') == false
p balanced?('}Hey!{') == false
p balanced?('What "is" this?') == true
p balanced?('What is" this?') == false
