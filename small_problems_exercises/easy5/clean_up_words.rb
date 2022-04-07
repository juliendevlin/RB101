ALPHA = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 
         'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
         'w', 'x', 'y', 'z']

def cleanup(str)
  split_str = []

  str.chars.each do |char|
    if ALPHA.include?(char)
      split_str << char
    elsif ALPHA.include?(char) == false && split_str[-1] != ' '
     split_str << ' '
    else
      next
    end
  end

  split_str.inject(:+)
end

p cleanup("---what's my +*& line?") == ' what s my line '
