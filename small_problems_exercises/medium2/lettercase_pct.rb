def letter_percentages(str)
  lowercase = 0
  uppercase = 0
  neither = 0
  total = 0

  str.chars.each do |char|
    if char =~ /[a-z]/
      lowercase += 1
      total +=1
    elsif char =~ /[A-Z]/
      uppercase += 1
      total += 1
    else
      neither += 1
      total +=1
    end
  end

  percentages_hash = Hash.new
  percentages_hash[:lowercase] = ((lowercase.to_f / total.to_f) * 100).round(1)
  percentages_hash[:uppercase] = ((uppercase.to_f / total.to_f) * 100).round(1)
  percentages_hash[:neither] = ((neither.to_f / total.to_f) * 100).round(1)

  percentages_hash
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')