def double_consonants(str)
  doubled_str = ''

  str.each_char do |char|
    if char =~ /[a-df-hj-np-tv-z]/i
      doubled_str << char << char
    else
      doubled_str << char
    end
  end

  doubled_str
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""