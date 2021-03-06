module Tori
  class Player
    SCALE = 0.5
    ZOOM = 0.8
    POS_Y = 650
    SPEED = 5

    def initialize(name)
      @tiles = Tileset.new(name)
      @facing = :right
      idle!
    end

    def idle!
      @tiles.idle!
    end

    def walking!
      @tiles.walking!
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

    def draw
      scale_x = (@facing == :right ? ZOOM : -(ZOOM))
      @tiles.draw(@pos_x, POS_Y, 10, 0, SCALE, SCALE, scale_x, ZOOM)
    end

    private

    class Tileset < Hash

      def initialize(name)
        self[:idle]     = Tori::Animation.new("#{ name }/idle")
        self[:walking]  = Tori::Animation.new("#{ name }/walking")
        walking!
      end

      def idle!
        @current_animation = self[:idle]
      end

      def walking!
        @current_animation = self[:walking]
      end

      def width
        @current_animation.width
      end

      def draw(*args)
        @current_animation.draw *args
      end
    end
  end
end
