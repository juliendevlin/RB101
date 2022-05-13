def swap_name(name)
  split_name = name.split(' ')
  split_name[1] + ', ' + split_name[0]
end

p swap_name('Joe Roberts') == 'Roberts, Joe'