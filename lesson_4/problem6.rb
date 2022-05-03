flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

shortened_flints = flintstones.map do |name|
  name[0..2]
end

p shortened_flints