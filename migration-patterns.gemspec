lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'date'
require 'migration_patterns/version'

Gem::Specification.new do |spec|
  spec.name          = 'migration-patterns'
  spec.version       = 0.0.0
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ['Adam David', 'Gitlab']
  spec.email         = ['adamrdavid@gmail.com']
  spec.date          = Date.today.to_s
  spec.summary       = "Zero downtime migration helpers for rails"
  spec.homepage      = 'https://github.com/adamrdavid/migration-patterns'
  spec.license       = 'MIT'
  spec.files         = Dir['lib/**/*.{rb,json}']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
end
