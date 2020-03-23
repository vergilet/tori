module Tori
  module Scenes
    class Menu < Tori::Scene
      def initialize(game)
        super
        @large_font = Gosu::Font.new(game, "Futura", 800 / 20)

        @menu = ::Menu.new(game)
        @menu.add_item(Gosu::Image.new("assets/menu/Bristol.png", false), 100, 200, 1, -> { game.start_train_scene }, Gosu::Image.new("assets/menu/Bristol_hover.png", false))
        @menu.add_item(Gosu::Image.new("assets/menu/Bristol.png", false), 800, 200, 1, -> { game.start_auto_scene }, Gosu::Image.new("assets/menu/Bristol_hover.png", false))

        @cursor = Gosu::Image.new('assets/menu/cursor.png')
        @backdrop = Backdrop.new(game, "menu")
      end

      def draw
        @backdrop.draw
        @menu.draw

        @cursor.draw game.mouse_x, game.mouse_y, 1

        draw_text(135, 230, "Story #1 - Midnight Train", @large_font, 0xff000000)
        draw_text(835, 230, "Story #2 - Auto Park", @large_font, 0xff000000)
      end

      def update
        @menu.update
        game.caption = "Tori [FPS: #{Gosu.fps}]"
      end

      def button_down(id); end

      def button_up(id); end

      private

      def draw_text(x, y, text, font, color)
        font.draw_text(text, x, y, 3, 1, 1, color)
      end
    end
  end
end