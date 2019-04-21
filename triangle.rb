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
#
def triangle(a, b, c)
  # WRITE THIS CODE
  	x, y, z = [a, b, c].sort
	return :equilateral if (a == b && a == c && a > 0)
	return :isosceles if ((a == b || a == c || b == c) && (a != b || a != c || b != c) && x + y > z)
  	return :scalene if (a != b && a != c && b != c && a >= 0 && b >= 0 && c >= 0)
  	arr = [a, b, c].min
  	raise TriangleError if (a == 0 && b == 0 && c == 0)
  	raise TriangleError if arr <= 0
  	raise TriangleError if x + y <= z
 		#[:equilateral,:isosceles,:scalene].fetch([a,b,c].uniq.size - 1)
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
	
end
