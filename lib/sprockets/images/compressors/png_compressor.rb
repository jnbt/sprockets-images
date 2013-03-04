require "sprockets/images/compressors/image_optim"

module Sprockets
  module Images
    module Compressors

      class PNGCompressor < Base
        include ImageOptim

        self.default_mime_type      = "image/png"
        self.default_file_extension = "png"

      end

    end
  end
end
