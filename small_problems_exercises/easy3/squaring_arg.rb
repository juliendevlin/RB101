def multiply(n1, n2)
  n1 * n2
end

def square(n)
  multiply(n, n)
end

# further exploration

def power(n, p)
  multiply(n, n ** (p - 1))
end

p square(5) == 25
p square(-8) == 64

p power(2, 3) == 8
p power(4, 4) == 256
