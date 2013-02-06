require_relative 'shape'
require_relative 'color'
require_relative 'rectangle'

class Circle < Shape
  attr_accessor :radius, :color

  def initialize(x, y, radius, color)
    super(x, y, color)
    @radius = radius
  end

  def draw
    print("Drawing a Circle at:(#{@x}, #{@y}), radius #{@radius} and RGB colors #{@color.draw}\n")
  end

  def area
    Integer(Math::PI * radius ** 2)
  end
end

color  = Color.new(1,2,3)
circle = Circle.new(1,2,10, color)

class Outlaw
  def draw
    puts("Drawed an Outlaw; #{area}")
  end

  def area
    puts("Outlaws don't need an area")
  end
end

[Circle.new(1,2,10, Color.new(1,2,3)),
 Rectangle.new(4,5,10,10),
 Outlaw.new()].each{|shape| shape.draw }
