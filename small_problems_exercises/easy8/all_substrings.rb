def substrings(str)
  substrings = []
  count = 0

  str.length.times do
    count.upto(str.length - 1) do |ind|
      substrings << str[count..ind]
    end
    count += 1
  end

  substrings
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]