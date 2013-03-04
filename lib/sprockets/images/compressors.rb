module Sprockets
  module Images
    module Compressors
      class Base
        class << self
          attr_accessor :default_mime_type, :default_file_extension
        end

        attr_reader :processor
        def initialize(processor)
          @processor = processor
        end

        def compress
          raise NotImplementedError
        end

      end
    end
  end
end

require "sprockets/images/compressors/png_compressor"
require "sprockets/images/compressors/jpg_compressor"
