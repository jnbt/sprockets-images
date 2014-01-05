$:.push File.expand_path("../lib", __FILE__)
require "sprockets/images/version"

Gem::Specification.new do |gem|
  gem.name        = "sprockets-images"
  gem.version     = Sprockets::Images::VERSION
  gem.authors     = ["Jonas Thiel"]
  gem.email       = ["jonasthiel@googlemail.com"]
  gem.homepage    = "http://www.jonasthiel.de"
  gem.summary     = %q{Extend sprockets pipepline by image compression}
  gem.description = %q{Extend sprockets pipepline by image compression}

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_dependency "sprockets", "~> 2.10"
  gem.add_dependency "image_optim", "~> 0.7.3"

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rdoc"
  gem.add_development_dependency "minitest"
  gem.add_development_dependency "testem"
  gem.add_development_dependency "rack-test"
end
