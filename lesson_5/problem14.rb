hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# => [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

results = []

hsh.each do |fruit, desc|
  if desc[:type] == 'fruit'
    results << desc[:colors].map do |color|
      color.capitalize
    end
  end
  
  results << desc[:size].upcase if desc[:type] == 'vegetable'
end

p results