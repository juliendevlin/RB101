hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |key, strings|
  strings.each do |string|
    string.chars.each do |char|
      puts char if char =~ /[aeiou]/
    end
  end
end