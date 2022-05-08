# returns a hash that contains 3 entries: 
#   - the number of characters in the string that are lowercase letters
#   - the number of characters that are uppercase letters
#   - the number of characters that are neither.
LOWERCASE = 'abcdefghijklmnopqrstuvwxyz'
UPPERCASE = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

def letter_case_count(str)
  hsh = { lowercase: 0, uppercase: 0, neither: 0 }

  str.chars.each do |char|
    if LOWERCASE.include?(char)
      hsh[:lowercase] += 1
    elsif UPPERCASE.include?(char)
      hsh[:uppercase] += 1
    else
      hsh[:neither] += 1
    end
  end

  hsh
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }