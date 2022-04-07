def swap(str)
  swapped_str = ''
  split_str = str.split.map do |word|
                  first = word[0]
                  last = word[-1]

                  word[0] = last
                  word[-1] = first
                  
                  word
                end

  split_str.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'