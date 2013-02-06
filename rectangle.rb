require_relative 'shape'

class Rectangle < Shape
  def initialize(x, y, length, width)
    super(x, y, nil)
    @length = length
    @width  = width
  end

  def draw
    print("Drawing a Rectangle at:(#{@x}, #{@y}), length #{@length}, width #{@width} and area #{area}\n")
  end

  def area
    Integer(@length * @width)
  end
end

