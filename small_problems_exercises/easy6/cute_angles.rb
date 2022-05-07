DEGREE = "\xC2\xB0"

def dms(degree_f)
  minutes = (degree_f % 1) * 60
  seconds = (minutes % 1) * 60

  %(#{degree_f.to_i % 360}#{DEGREE}#{format("%02d", minutes.to_i)}'#{format("%02d", seconds.to_i)}")
end

puts dms(30) # == %(30°00'00")
puts dms(76.73) # == %(76°43'48")
puts dms(254.6) # == %(254°36'00")
puts dms(93.034773) # == %(93°02'05")
puts dms(0) # == %(0°00'00")
puts dms(360) # == %(360°00'00") || dms(360) == %(0°00'00")

# further exploration

puts dms(400) # == %(40°00'00")
puts dms(-40) # == %(320°00'00")
puts dms(-420) # == %(300°00'00")