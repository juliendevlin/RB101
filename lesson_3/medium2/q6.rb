def color_valid(color)
  (color == "blue" || color == "green") ? true : false
end

# *facepalm* per solution, you don't need if statement at all
# statement automatically evaluated...

def color_valid(color)
  color == "blue" || color == "green"
end

p color_valid('blue')
p color_valid('pink')