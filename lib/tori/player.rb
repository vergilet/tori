module Tori
  class Player
    SCALE = 0.8
    POS_Y = 300

    def initialize(window, name)
      @image = Gosu::Image.new(window, "assets/#{ name }/idle.png", false)
    end

    def draw
      @image.draw(100, POS_Y, 1, SCALE, SCALE)
    end
  end
end
