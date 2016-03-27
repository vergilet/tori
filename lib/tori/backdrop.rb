module Tori
  class Backdrop

    def initialize(window, name)
      @backdrop = Tori::Animation.new(window, "bg/#{ name }")
      @scale = window.height.to_f / @backdrop.height.to_f
      @bg_x = -(@backdrop.width * @scale - window.width) / 2
    end

    def draw
      @backdrop.draw(x = @bg_x, y = 0, z = 0, angle = 0, c_x = 0, c_y = 0, @scale, @scale)
    end
  end
end
