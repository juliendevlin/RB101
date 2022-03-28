def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element # destructively modifying the variable that was passed in as buffer argument
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element] # not affecting variable that was passed in, since assigned to new variable
  buffer.shift if buffer.size > max_buffer_size
  buffer
end
