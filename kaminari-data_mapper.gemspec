# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kaminari/data_mapper/version'

Gem::Specification.new do |spec|
  spec.name          = "kaminari-data_mapper"
  spec.version       = Kaminari::DataMapper::VERSION
  spec.authors       = ["Akira Matsuda"]
  spec.email         = ["ronnie@dio.jp"]

  spec.summary       = 'Kaminari DataMapper adapter'
  spec.description   = 'kaminari-data_mapper lets your DataMapper models be paginatable'
  spec.homepage      = 'https://github.com/kaminari/kaminari-data_mapper'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'kaminari'
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'test-unit'
  spec.add_development_dependency 'data_mapper'
  spec.add_development_dependency 'dm-sqlite-adapter'
  spec.add_development_dependency 'rails'
  spec.add_development_dependency 'rspec-rails', '~> 2.14.1'
  spec.add_development_dependency 'capybara'
  spec.add_development_dependency 'database_cleaner'
  spec.add_development_dependency 'rr'
end
