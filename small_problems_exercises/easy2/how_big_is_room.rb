SQM_SQF_CONVERT = 10.7639

def calculate_area(length, width)
  length * width
end

def convert_to_feet(area)
  area * SQM_SQF_CONVERT
end

puts 'Enter the length of the room in meters'
length = gets.chomp.to_f

puts 'Enter the width of the room in meters'
width = gets.chomp.to_f

area_m = calculate_area(length, width).round(2)
area_f = convert_to_feet(area_m).round(2)

puts "The area of the room is #{area_m} square meters (#{area_f} square feet)"

# further exploration - input in feet, display results in square feet, square inches, square cm

def calculate_area_f(length, width)
  length * width
end

def convert_to_in(area)
  area * 12
end

def convert_to_cm(area)
  area_m = area / SQM_SQF_CONVERT
  area_m * 100
end

puts 'Enter the length of the room in feet'
length = gets.chomp.to_f

puts 'Enter the width of the room in feet'
width = gets.chomp.to_f

area_f = calculate_area_f(length, width).round(2)
area_in = convert_to_in(area_f).round(2)
area_cm = convert_to_cm(area_f).round(2)

puts "The area of the room is #{area_f} square feet (#{area_in} square inches, #{area_cm} square centimeters)"
