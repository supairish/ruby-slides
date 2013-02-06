class Color
  def initialize(r, g, b)
    @r = r
    @g = g
    @b = b
  end

  def draw
    "#{@r},#{@g},#{@b}"
  end
end