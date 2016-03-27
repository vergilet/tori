module Tori
  class Game < Gosu::Window
    def initialize
      super(640, 480, false) #3rd - fullscreen
      self.caption = 'Tori'
      @dude = Player.new(self, "protagonist")
      @dude.move_to 0
      @controls = Controls.new(self, @dude)
      @backdrop = Backdrop.new(self, "bg")
    end

    def draw
      @backdrop.draw
      @dude.draw
    end

    def update
      @controls.update(nil, nil)
    end

    def button_down(id)
      @controls.button_down button_id_to_char(id)
    end

    def button_up(id)
      @controls.button_up button_id_to_char(id)
    end

    def button_down?(char)
      super char_to_button_id(char)
    end
  end
end
