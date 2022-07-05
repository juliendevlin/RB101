def triangle(n1, n2, n3)
  triangle = [n1, n2, n3]
  if triangle.include?(0) || triangle.sort[0] + triangle.sort[1] < triangle.sort[2]
    :invalid
  else
    if n1 == n2 && n2 == n3
      :equilateral
    elsif (n1 == n2 && n2 != n3) || (n2 == n3 && n3 != n1) || (n3 == n1 && n1 != n2)
      :isosceles
    elsif n1 != n2 && n2 != n3
      :scalene
    end
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
