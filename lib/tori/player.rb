module Tori
  class Player
    SCALE = 0.5
    ZOOM = 0.8
    POS_Y = 370
    SPEED = 3

    def initialize(window, name)
      @image = Gosu::Image.new(window, "assets/#{ name }/idle.png", false)
      @facing = :right
    end

    def move_to(x)
      @pos_x = x
    end

    def move_left
      @facing = :left
      @pos_x -= SPEED
    end

    def move_right
      @facing = :right
      @pos_x += SPEED
    end

    def left
      @pos_x
    end

    def right
      @pos_x - 300
    end

    def draw
      scale_x = (@facing == :right ? ZOOM : -(ZOOM))
      @image.draw_rot(@pos_x, POS_Y, 10, 0, SCALE, SCALE, scale_x, ZOOM)
    end
  end
end
