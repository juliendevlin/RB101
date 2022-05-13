def buy_fruit(list)
  fruits = []

  list.each do |list_item|
    list_item[1].times { fruits << list_item[0] }
  end

  fruits
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]