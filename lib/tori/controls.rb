module Tori
  class Controls

    CONTROLS = {
      'a' => :left,
      'd' => :right
    }
    def initialize(window, player)
      @window = window
      @player = player
      @keys = CONTROLS
    end

    def update(left, right)
      case maching_action
      when :left then @player.move_left if @player.left > left
      when :right then @player.move_right if @player.right < right
      end
    end

    private

    def maching_action
      @keys.each do |key, action|
        if @window.button_down? key
          return action
        end
      end
    end

    # def button_down?(char)
    #   super char_to_button_id(char)
    # end
  end
end
