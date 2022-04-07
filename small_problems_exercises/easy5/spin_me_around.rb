def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

# will return a new object 
# String#split creates new object, and String#reverse! is mutating elements of that new object