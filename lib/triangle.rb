class Triangle
  # write code here
attr_accessor :h, :b, :hp

    def initialize(h, b, hp)
      @h = h
      @b = b
      @hp = hp
    end
    def kind()
      if h + b <= hp || hp + b <= h || hp + h <= b
        begin
          raise TriangleError
        end
          

      elsif h <= 0 || b <= 0 || hp <= 0 
        begin
          raise TriangleError
        end
          

      else
        if h == b && b == hp
          :equilateral
        elsif h == b || b == hp || h == hp
          :isosceles 
        else
          :scalene
          
        end
      end

    end
    class TriangleError < StandardError
      def message
        "Triangle Error"
      end
    end


end
