# example UUID: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"
# 32 hexadecimal characters
# typically broken into 5 sections like this 8-4-4-4-12
# represented as a string

CHARACTERS = %w[a b c d e f 0 1 2 3 4 5 6 7 8 9]

def uuid_generator
  uuid = ''

  8.times { uuid << CHARACTERS.sample }
  uuid << '-'
  4.times { uuid << CHARACTERS.sample }
  uuid << '-'
  4.times { uuid << CHARACTERS.sample }
  uuid << '-'
  4.times { uuid << CHARACTERS.sample }
  uuid << '-'
  12.times { uuid << CHARACTERS.sample }

  uuid
end

p uuid_generator
p uuid_generator
p uuid_generator
