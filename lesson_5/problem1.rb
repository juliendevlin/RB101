arr = ['10', '11', '9', '7', '8']

p arr.map { |n| n.to_i }.sort.reverse.map { |n| n.to_s }