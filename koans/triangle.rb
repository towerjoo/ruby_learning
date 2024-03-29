# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb

def valid_triangle(a, b, c)
    (a+b>c) and ((a-b).abs < c)
end

def triangle(a, b, c)
  # WRITE THIS CODE
    if a <= 0 or b <= 0 or c <= 0
        raise TriangleError
    end
    if not valid_triangle(a, b, c)  or
        not valid_triangle(a, c, b) or 
        not valid_triangle(c, b, a)
        raise TriangleError
    end
    if a == b and b == c
        return :equilateral
    end
    if a == b or a == c or b == c
        return :isosceles
    end
    return :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
