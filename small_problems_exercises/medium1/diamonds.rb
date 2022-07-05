def diamond(size)
  puts diamond_top(size)
  puts diamond_middle(size)
  puts diamond_bottom(size)
end

def diamond_middle(size)
 '*' * size
end

def diamond_top(size)
  buffer = (size - 1) / 2
  top_of_diamond = ""

  buffer.times do
    top_of_diamond << (" " * buffer) + ("*" * (size - (buffer * 2))) + (" " * buffer) + "\n"
    buffer -= 1
  end

  top_of_diamond
end

def diamond_bottom(size)
  max_buffer = (size - 1) / 2
  buffer = 1
  bottom_of_diamond = ""

  max_buffer.times do
    bottom_of_diamond << (" " * buffer) + ("*" * (size - (buffer * 2))) + (" " * buffer) + "\n"
    buffer += 1
  end

  bottom_of_diamond
end

diamond(1)
diamond(3)
diamond(9)

# further explorations

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance) { |distance| print_row(grid_size, distance) }
end

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  if stars.include?('**')
    stars[1..-2] = " " * (number_of_stars - 2)
  end
  puts stars.center(grid_size)
end

diamond(5)