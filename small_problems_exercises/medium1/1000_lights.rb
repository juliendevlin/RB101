# create a hash with n keys, for which all their values are 0
# loop n times
  # iterate through hash 
  # if key % n == 0 
    # if value == 0 then 1
    # if value == 1 then 0
# return array of keys from hash for which value == 1

def lights_on(repetitions) 
  lights = Hash.new
  1.upto(repetitions) do |n|
    lights[n] = 0
  end

  1.upto(repetitions) do |n|
    lights.each do |switch, on_off|
      if switch % n == 0
        if on_off == 0
          lights[switch] = 1
        elsif on_off == 1
          lights[switch] = 0
        end
      end
    end

    puts "Round #{n}"

    on_lights = lights.select do |switch, on_off|
      on_off == 1
    end.keys
    if on_lights == []
      puts "No lights are on."
    elsif on_lights.size == repetitions
      puts "All lights are on."
    else
      puts "Lights #{on_lights[0..-2].join(', ')} and #{on_lights[-1]} are now on."
    end

    off_lights = lights.select do |switch, on_off|
      on_off == 0
    end.keys
    if off_lights == []
      puts "No lights are off."
    elsif off_lights.size == repetitions
      puts "All lights are off"
    else
      puts "Lights #{off_lights[0..-2].join(', ')} and #{off_lights[-1]} are now off."
    end
  end

  lights.select do |switch, on_off|
    on_off == 1
  end.keys
end

p lights_on(5) == [1, 4]
# p lights_on(10) == [1, 4, 9]
# p lights_on(1000)
