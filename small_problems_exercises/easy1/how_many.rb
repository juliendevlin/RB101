def count_occurrences(arr)
  hash = {}

  arr.each do |element|
    if hash[element] == nil
      hash[element] = 1
    else
      hash[element] += 1
    end
  end

  hash.each do |key, value|
    puts "#{key} => #{value}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

# expect output:
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# solution: 
def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end
