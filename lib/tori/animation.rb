module Tori

  class Animation

    def initialize(pattern)
      @images = find_images_matching(pattern)
    end

    def width
      @images[0].width
    end

    def height
      @images[0].height
    end

    def draw(*args)
      image = @images[Gosu.milliseconds / 150 % @images.size]
      image.draw_rot *args
    end

    private

    def find_images_matching(pattern)
      Dir["assets/#{ pattern }*"].map do |path|
        Gosu::Image.new(path, false)
      end
    end
  end
end
