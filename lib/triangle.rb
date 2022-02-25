class Triangle

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind 
    sides_uniq = [@side1, @side2, @side3].uniq.size
    sides = [@side1, @side2, @side3].sort
    no_neg_size = sides.any?{|side| side <= 0} == false
    triangle_inequality = sides[0] + sides[1] > sides[2] ? true : false

   case 
   when sides_uniq == 1 && no_neg_size && triangle_inequality
    :equilateral
   when sides_uniq == 2 && no_neg_size && triangle_inequality
    :isosceles
   when sides_uniq == 3 && no_neg_size && triangle_inequality
    :scalene
   else
    raise TriangleError
   end


  end

  class TriangleError < StandardError

  end

end
