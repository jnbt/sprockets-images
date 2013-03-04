require "sprockets/images/version"
require "sprockets/images/processors"
require "sprockets/images/compressors"

module Sprockets
  module Images
    class Integration
      attr_reader :processor

      def initialize
        @processor = Processors::ImageOptimProcessor.new
      end

      def setup(env)
        Compressors.constants.each do |compressor|
          next unless compressor =~ /Compressor$/
          klass = Compressors.const_get(compressor)
          env.register_postprocessor klass.default_mime_type, klass.name do |context, data|
            klass.new(processor).compress(context, data)
          end
        end
      end

    end
  end
end
