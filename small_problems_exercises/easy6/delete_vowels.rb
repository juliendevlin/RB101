def remove_vowels(arr)
  arr.map do |str|
    str.chars.select do |char|
      char != 'a' && char != 'e' && char != 'i' && char != 'o' && char != 'u' && char != 'A' && char != 'E' && char != 'I' && char != 'O' && char != 'U'
    end.join
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']