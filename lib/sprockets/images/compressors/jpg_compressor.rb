require "sprockets/images/compressors/image_optim"

module Sprockets
  module Images
    module Compressors

      class JPGCompressor < Base
        include ImageOptim

        self.default_mime_type      = "image/jpeg"
        self.default_file_extension = "jpg"

      end

    end
  end
end
