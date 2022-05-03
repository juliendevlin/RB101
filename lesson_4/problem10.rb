munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |munster, info|
  if info['age'] <= 17
    info['age_group'] = 'kid'
  elsif info['age'] >= 18 && info['age'] <= 64
    info['age_group'] = 'adult'
  else
   info['age_group'] = 'senior'
  end
end

p munsters

# cleaner solution with case and range:

munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end