module Sprockets
  module Images
    module Compressors
      module ImageOptim

        def compress(context, data)
          compressed = data
          Tempfile.open ["sprockets-images", self.class.default_file_extension] do |file|
            file.binmode
            file.write data
            file.close

            compressed = processor.process(file.path)
          end
          compressed
        end

      end
    end
  end
end
