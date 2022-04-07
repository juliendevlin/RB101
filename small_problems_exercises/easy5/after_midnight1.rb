def time_of_day(minutes)
  if minutes >= 0

    time_hour = 0
    time_minutes = 0

    while minutes > 59
      minutes -= 60
      time_hour += 1
      time_hour = 0 if time_hour == 24
    end

    time_minutes = minutes

  else

    time_hour = 23
    time_minutes = 60

    while minutes < -59
      minutes += 60
      time_hour -= 1
      time_hour = 23 if time_hour == -1
    end

    time_minutes += minutes

  end

  "#{format("%2.2d", time_hour)}:#{format("%2.2d", time_minutes)}"

end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
