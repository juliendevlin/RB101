def joinor(arr, del1 = ', ', del2 = 'or')
  if arr.size == 1
    arr[0].to_s
  elsif arr.size == 2
    arr.join(' ' + del2 + ' ')
  else
    arr[0..-2].join(del1) + del1 + del2 + ' ' + arr[-1].to_s
  end
end

p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"