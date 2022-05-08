def staggered_case(str)
  staggered_str = ''

  str.chars.each_with_index do |char, ind|
    if ind.even?
      staggered_str << char.upcase
    elsif ind.odd?
      staggered_str << char.downcase
    end
  end

  staggered_str
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# further exploration

def staggered_case(str, start)
  staggered_str = ''

  if start == 'up'
    str.chars.each_with_index do |char, ind|
      if ind.even?
        staggered_str << char.upcase
      elsif ind.odd?
        staggered_str << char.downcase
      end
    end
  elsif start == 'down'
    str.chars.each_with_index do |char, ind|
      if ind.even?
        staggered_str << char.downcase
      elsif ind.odd?
        staggered_str << char.upcase
      end
    end
  end

  staggered_str
end

p staggered_case('I Love Launch School!', 'up') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('I Love Launch School!', 'down') == 'i lOvE LaUnCh sChOoL!'
