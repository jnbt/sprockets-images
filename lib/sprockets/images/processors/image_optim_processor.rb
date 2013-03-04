require "image_optim"

module Sprockets
  module Images
    module Processors

      class ImageOptimProcessor
        attr_reader :image_optim, :config

        def initialize
          @config      = {:pngout => false}
          @image_optim = ImageOptim.new(config)
        end

        def process(file)
          open(image_optim.optimize_image(file), "rb").read
        end

      end
    end
  end
end
