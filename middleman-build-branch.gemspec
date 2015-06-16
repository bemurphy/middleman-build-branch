# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'middleman-build-branch/version'

Gem::Specification.new do |gem|
  gem.name          = "middleman-build-branch"
  gem.version       = Middleman::BuildBranch::VERSION
  gem.authors       = ["Brendon Murphy"]
  gem.email         = ["xternal1+github@gmail.com"]
  gem.description   = %q{Easy deployment of Middleman sites to a build branch}
  gem.summary       = %q{Easy deployment of Middleman sites to a build branch}
  gem.homepage      = "https://github.com/bemurphy/middleman-build-branch"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'rake', '> 0.9.3'
end
