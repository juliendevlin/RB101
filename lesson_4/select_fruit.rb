produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(produce)
  fruits = {}
  counter = 0
  keys = produce.keys

  loop do
    break if counter == keys.size
    
    if produce[keys[counter]] == 'Fruit'
      fruits[keys[counter]] = 'Fruit'
    end

    counter += 1
  end

  fruits
end

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}