def triangle(size)
  stars = 0
  spaces = size

  size.times do
    stars +=1
    spaces -= 1
    puts (' ' * spaces) + ('*' * stars)
  end
end

triangle(5)

triangle(9)

def triangle(size)
  stars = size
  spaces = 0

  size.times do
    puts (' ' * spaces) + ('*' * stars)
    stars -=1
    spaces += 1
  end
end

triangle(5)

triangle(9)

def triangle(size)
  stars = 0
  spaces = size

  size.times do
    stars +=1
    spaces -= 1
    puts ('*' * stars) + (' ' * spaces)
  end
end

triangle(5)

triangle(9)
