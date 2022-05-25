arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

new_arr = arr.map do |hsh|
  hsh.select do |k, v|
    v.select { |num| num.even? } == v
  end
end

p new_arr

# per solution condition pertains to whole hsh, not just hsh pairs...

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

new_arr = arr.select do |hsh|
  hsh.select { |k, v| v.select { |num| num.even? } == v } == hsh
end

p new_arr