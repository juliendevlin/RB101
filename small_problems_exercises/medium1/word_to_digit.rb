def word_to_digit(str)
  str = str.gsub(/\bzero\b/, "0")
  str = str.gsub(/\bone\b/, "1")
  str = str.gsub(/\btwo\b/, "2")
  str = str.gsub(/\bthree\b/, "3")
  str = str.gsub(/\bfour\b/, "4")
  str = str.gsub(/\bfive\b/, "5")
  str = str.gsub(/\bsix\b/, "6")
  str = str.gsub(/\bseven\b/, "7")
  str = str.gsub(/\beight\b/, "8")
  str = str.gsub(/\bnine\b/, "9")
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
