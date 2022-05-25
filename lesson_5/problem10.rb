new_hsh = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |element|
  hsh = {}
  element.each do |k, v|
    hsh[k] = v + 1
  end
  hsh
end

p new_hsh
