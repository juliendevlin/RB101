a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

# a == 4
# b == [1, 8]
# NOPE!
# correct anser:
a # => 2
b # => [3, 8]