def fizzbuzz(start, finish)
  (start..finish).each_with_index do |num, ind|
    if num % 3 == 0 && num % 5 == 0
      print "FizzBuzz" 
    elsif num % 3 == 0
      print "Fizz"
    elsif num % 5 == 0
      print "Buzz"
    else
      print num
    end

    print ", " unless ind == finish - 1
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz