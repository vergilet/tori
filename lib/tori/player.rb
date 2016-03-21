module Tori
  class Player
    SCALE = 0.8
    POS_Y = 300
    SPEED = 3

    def initialize(window, name)
      @image = Gosu::Image.new(window, "assets/#{ name }/idle.png", false)
    end

    def move_to(x)
      @pos_x = x
    end

    def move_left
      @pos_x -= SPEED
    end

    def move_right
      @pos_x += SPEED
    end

    def left
      @pos_x
    end

    def right
      @pos_x - 300
    end

    def draw
      @image.draw(@pos_x, POS_Y, 1, SCALE, SCALE)
    end
  end
end
