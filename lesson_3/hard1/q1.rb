if false
  greeting = "hello world"
end

greeting

# => error? if condition never executes, so greeting variable is never initalized?
# solution: returns nil since variable is initlized in an if condition
# but the code to assign it to "hello world" is not run 