def substrings(str)
  substrings = []
  count = 0

  str.length.times do
    count.upto(str.length - 1) do |ind|
      substrings << str[count..ind]
    end
    count += 1
  end

  substrings.select do |substr|
    substr =~ /[a-z0-9]/i
  end
end

def palindromes(str)
  substrings(str).select do |substr|
    substr.downcase == substr.downcase.reverse && substr.size > 1
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
p palindromes('Aba') == ['Aba']
p palindromes('&%&') == []
