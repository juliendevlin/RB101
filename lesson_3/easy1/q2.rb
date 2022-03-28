# Describe the difference between ! and ? in Ruby. 
# => by convention ! is a bang, typically used at the end of a method to indicate that a method will be destructive 
  # and modify the caller (but many destructive methods do not use one)
# => by convention ? is typically used at the end of a method that returns a boolean value
  # but again, is a convention, not a syntactical requirement
# => ! can be used to return the opposite of a value when placed ahead of it
  # i.e. !false == true
# => ? is also used as part of ternary operation 
  # i.e. true ? 1 : 0

# what is != and where should you use it?
# => != is not equals to i.e. 1 != 2

# put ! before something, like !user_name
# => ! before a value returns the opposite of of the object's boolean value 
  # if user_name is truthy, !user_name returns false

# put ! after something, like words.uniq!
# => by convention, this indicates that a method will be destructive

# put ? before something
# => this doesn't do anything, likely will just throw an error

# put ? after something
# => by convention, this indicates that a method will return a boolean

# put !! before something, like !!user_name
# => opposite of the opposite i.e. !!true == true
  # or if user_name is a truthy value, !!user_name returns true