module Tori
  class Backdrop < Gosu::Image

    def initialize(window, filename)
      super(window, "assets/bg/#{ filename }", false)
      @scale = window.height.to_f / height.to_f
      @bg_x = -(width * @scale - window.width) / 2
    end

    def draw
      super(@bg_x, 0, 0, @scale, @scale)
    end
  end
end
