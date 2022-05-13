def sequence(num)
  sequence = []

  num.times do |count|
    sequence << count + 1
  end

  sequence
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]


def sequence(number)
  if number > 0
    (1..number).to_a
  elsif number < 0
    (number..-1).to_a.reverse
  elsif number == 0
    number
  end
end

p sequence(5)
p sequence(-5)
p sequence(0)
