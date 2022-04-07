def running_total(array)
  previous_num = 0

  new_array = array.map do |num|
                num += previous_num
                previous_num = num
              end

  new_array
end

p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([3]) == [3]
p running_total([]) == []

# solution is simpler:
# def running_total(array)
#   sum = 0
#   array.map { |value| sum += value }
# end

# further exploration
# using #each_with_object

def running_total(array)
  sum = 0

  array.each_with_object([]) do |element, new_array|
    sum += element
    new_array.push(sum)
  end
end

p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([3]) == [3]
p running_total([]) == []

# further exploration
# using #inject

def running_total(array)
  new_array = []

  last_element = array.inject do |memo, element|
                   new_array << memo
                   memo + element
                 end

  new_array << last_element unless last_element == nil
  new_array
end

p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([3]) == [3]
p running_total([]) == []
