Gem::Specification.new do |spec|
  spec.name          = 'lita-butt'
  spec.version       = '0.1.1'
  spec.authors       = ['Nick Pegg']
  spec.email         = ['git@nickpegg.com']
  spec.description   = 'Lita Handler to print ASCII butts'
  spec.summary       = 'Lita Handler to print ASCII butts. Inspired by some silliness in Yelp\'s chatbot'
  spec.homepage      = 'https://github.com/nickpegg/lita-butt'
  spec.license       = 'MIT'
  spec.metadata      = { 'lita_plugin_type' => 'handler' }

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'lita', '>= 4.7'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rack-test'
  spec.add_development_dependency 'rspec', '>= 3.0.0'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'coveralls'
end
