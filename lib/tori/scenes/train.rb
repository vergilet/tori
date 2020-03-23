module Tori
  module Scenes
    class Train < Tori::Scene
      def initialize(game)
        super
        @dude = Player.new("protagonist")
        @dude.move_to 0
        @controls = Controls.new(game, @dude)
        @backdrop = Backdrop.new(game, "bg")
      end

      def draw
        @backdrop.draw
        @dude.draw
      end

      def update
        @controls.update
        game.caption = "Tori Train Story [FPS: #{Gosu.fps}] "
      end

      def button_down(id)
        @controls.button_down button_id_to_char(id)
      end

      def button_up(id)
        @controls.button_up button_id_to_char(id)
      end
    end
  end
end
