module Tori
  class Controls

    CONTROLS = {
      'a' => :left,
      'd' => :right
    }

    def initialize(window, player)
      @window = window
      @player = player
    end

    def button_down(key)
      case CONTROLS[key]
      when :left, :right then @player.walking!
      end
    end

    def button_up(key)
      @player.idle! unless CONTROLS.keys.map { |control| @window.button_down?(control) }.any?
    end

    def update
      case maching_action
      when :left then @player.move_left
      when :right then @player.move_right
      end
    end

    private

    def maching_action
      CONTROLS.each do |key, action|
        if @window.button_down? key
          return action
        end
      end
    end
  end
end
