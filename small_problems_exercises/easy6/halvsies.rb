def halvsies(arr)
  halvsie = [[], []]
  half_way_point = arr.size / 2
  
  if arr.size.even?
    halvsie[0] = arr[0...half_way_point]
    halvsie[1] = arr[half_way_point..-1]
  elsif arr.size.odd?
    halvsie[0] = arr[0..half_way_point]
    halvsie[1] = arr[half_way_point+1..-1]
  end

  halvsie
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]