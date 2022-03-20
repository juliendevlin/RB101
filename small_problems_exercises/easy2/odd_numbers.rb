for num in 1..99
  puts num if num.odd?
end

# further exploration
1.upto(99) { |num| puts num if num % 2 != 0 }
