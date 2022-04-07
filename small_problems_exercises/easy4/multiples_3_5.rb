def multisum(ceiling)
  multiples = []

  (1..ceiling).each do |num|
    if num % 3 == 0 || num % 5 == 0
      multiples << num
    end
  end

  multiples.sum
end

p  multisum(3) == 3
p  multisum(5) == 8
p  multisum(10) == 33
p  multisum(1000) == 234168

# solution uses seperate method for verifying if num is multiple
# solution uses #upto
# solution doesn't keep a collection of multiples since we don't actually need it, just sums them immediately 