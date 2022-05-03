flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

found_it = nil

flintstones.each_with_index do |name, index|
  if name[0..1] == 'Be'
    found_it = index
  end
end

p found_it
