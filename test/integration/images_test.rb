require "helper"
require "sprockets"

class SprocketsImagesIntegrationTest < Testem
  include Rack::Test::Methods

  let(:app) do
    Sprockets::Environment.new.tap do |env|
      Sprockets::Images::Integration.new.setup env
      env.append_path "test/fixtures"
    end
  end

  test "compresses jpg" do
    test_image("unprocessed.jpg")
  end

  test "compresses png" do
    test_image("unprocessed.png")
  end

  private

  def test_image(file)
    plain      = open("test/fixtures/#{file}")
    plain_size = plain.size
    processed  = get "/#{file}"
    processed_size = processed.headers["Content-Length"].to_i

    assert processed_size > 0, "processed file should have a size"
    assert processed_size < plain_size, "processed file should be smaller than original"
  end

end
