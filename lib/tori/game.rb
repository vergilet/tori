module Tori
  class Game < Gosu::Window
    def initialize
      super(1920, 1200, false) #3rd - fullscreen
      self.caption = 'Tori'

      @current_scene = Scenes::Menu.new(self)
    end

    def draw
      @current_scene.draw
    end

    def update
      self.caption = "Tori [FPS: #{Gosu.fps}]"
      @current_scene.update
    end

    def button_down(id)
      -> { @current_scene.button_down(id) }.call
    end

    def button_up(id)
      -> { @current_scene.button_up(id) }.call
    end

    def button_down?(char)
      # String for button else if mouse clicks
      if char.is_a? String
        super char_to_button_id(char)
      else
        super char
      end
    end

    def start_train_scene
      @current_scene = Scenes::Train.new(self)
    end

    def start_auto_scene
      @current_scene = Scenes::Auto.new(self)
    end
  end
end
