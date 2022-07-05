require 'date'

def friday_13th(year)
  year_to_check = Date.new(year,1,1)
  friday_13th = 0

  while year_to_check.year == year
    if year_to_check.mday == 13 && year_to_check.friday?
      friday_13th += 1
    end
    year_to_check = year_to_check.next
  end
  
  friday_13th
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

# further exploration

def fridays(year)
  year_to_check = Date.new(year,1,1)
  five_fri_months = 0

  while year_to_check.year == year
    month = year_to_check.month
    fri_per_months = 0

    while year_to_check.month == month
      fri_per_months += 1 if year_to_check.friday?
      year_to_check = year_to_check.next
    end

    five_fri_months += 1 if fri_per_months == 5
  end
  
  five_fri_months
end

p fridays(2022)
