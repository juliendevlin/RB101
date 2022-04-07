MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = 1440

def after_midnight(time_of_day)
  hours = time_of_day[0..1].to_i
  minutes = time_of_day[3..4].to_i

  hours = 0 if hours == 24
  minutes_after_midnight = (hours * MINUTES_PER_HOUR) + minutes
end

def before_midnight(time_of_day)
  hours = time_of_day[0..1].to_i
  minutes = time_of_day[3..4].to_i

  hours = 24 if hours == 0
  minutes_before_midnight = MINUTES_PER_DAY - ((hours * MINUTES_PER_HOUR) + minutes)
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
