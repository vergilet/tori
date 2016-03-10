module Tori
  class Game < Gosu::Window
    def initialize
      super(640, 480, false) #3rd - fullscreen
      self.caption = 'Tori'

      @dude = Gosu::Image.new(self, 'assets/protagonist/idle.png', false)
      @backdrop = Gosu::Image.new(self, 'assets/bg/1.jpg', false)
    end

    def draw

      factor = height / @backdrop.height
      bg_width = @backdrop.width * factor
      bg_x = - (bg_width - width) / 2

      @backdrop.draw(bg_x, 0, 0, factor, factor)

      @dude.draw(100, 255, 1, 0.9, 0.9)
    end
  end
end
