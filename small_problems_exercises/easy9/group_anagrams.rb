words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

words.each_with_index do |word, word_ind|
  print_array = []

  words.each_with_index do |comp, comp_ind|
    if comp.chars.sort == word.chars.sort && comp_ind < word_ind
      break
    elsif comp.chars.sort == word.chars.sort && comp_ind >= word_ind
      print_array << comp
    end
  end
  p print_array if !print_array.empty?
end