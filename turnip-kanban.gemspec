# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'turnip-kanban/version'

Gem::Specification.new do |gem|
  gem.name          = "turnip-kanban"
  gem.version       = Turnip::Kanban::VERSION
  gem.authors       = ["Joe Fiorini"]
  gem.email         = ["joe@joefiorini.com"]
  gem.description   = %q{Adds "wip" and "backlog" tags to rspec allowing you to commit scenarios without having to worry about them running.}
  gem.summary       = %q{A kanban workflow for Turnip.}
  gem.homepage      = "http://github.com/joefiorini/turnip-kanban"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "turnip"
  gem.add_development_dependency "rake"
end
