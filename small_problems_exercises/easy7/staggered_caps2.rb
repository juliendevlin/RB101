def staggered_case(str)
  staggered_str = ''
  up = true

  str.chars.each do |char|
    if char =~ /[A-Za-z]/
      if up == true
        staggered_str << char.upcase
        up = false
      elsif up == false
        staggered_str << char.downcase
        up = true
      end
    else
      staggered_str << char
    end
  end

  staggered_str
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# further exploration

def staggered_case(str, keyword)
  staggered_str = ''
  up = true

  if keyword == 1
    str.chars.each do |char|
      if char =~ /[A-Za-z]/
        if up == true
          staggered_str << char.upcase
          up = false
        elsif up == false
          staggered_str << char.downcase
          up = true
        end
      else
        staggered_str << char
      end
    end
  elsif keyword == 0
    str.chars.each do |char|
      if up == true
        staggered_str << char.upcase
        up = false
      elsif up == false
        staggered_str << char.downcase
        up = true
      end
    end
  end

  staggered_str
end

p staggered_case('I Love Launch School!', 1) == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS', 1) == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers', 1) == 'IgNoRe 77 ThE 444 nUmBeRs'
p staggered_case('I Love Launch School!', 0) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', 0) == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', 0) == 'IgNoRe 77 ThE 444 NuMbErS'