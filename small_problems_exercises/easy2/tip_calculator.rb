def prompt(str)
  puts ">> #{str}"
end

def calculate_tip(bill, percentage)
  bill * (percentage / 100)
end

def calculate_total(bill, tip)
  bill + tip
end

def display_tip_and_total(bill, percentage)
  prompt("The tip is $#{format("%#.2f", calculate_tip(bill, percentage))}")
  prompt("The total is $#{format("%#.2f", calculate_total(bill, calculate_tip(bill, percentage)))}")
end

prompt("What is the bill?")
bill = gets.chomp.to_f

prompt("What is the tip percentage?")
tip_percentage = gets.chomp.to_f

display_tip_and_total(bill, tip_percentage)
