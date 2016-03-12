module Tori
  class Game < Gosu::Window
    def initialize
      super(640, 480, false) #3rd - fullscreen
      self.caption = 'Tori'

      @dude = Tori::Player.new(self, "protagonist")
      # @backdrop = Backdrop.new(self, "1.jpg")
    end

    def draw
      # @backdrop.draw
      # @dude.draw
    end
  end
end
