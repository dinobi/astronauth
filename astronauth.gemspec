lib = File.expand_path('/lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require_relative './lib/astronauth/version'

Gem::Specification.new do |gspec|
  gspec.required_ruby_version = '>= 2.2'
  gspec.name        = 'Astronauth'
  gspec.version     = Astronauth::VERSION
  gspec.date        = '2019-06-16'
  gspec.summary     = 'Encrypted data sharing '
  gspec.description = 'End to end data encryption technology with lifespan dependency'
  gspec.authors     = ['Dinobi Kenkwo']
  gspec.email       = 'dino.kennetcorp@gmail.com'
  gspec.homepage    = 'http://rubygems.org/gems/astronauth'
  gspec.license     = 'MIT'

  gspec.files       = `git ls-files -z`.split("\x0")
  gspec.executables = gspec.files.grep(/^bin\//) { |f| File.basename(f) }
  gspec.test_files  = gspec.files.grep(/^(test|spec|features)\//)
  gspec.require_paths = ['lib']

  gspec.add_development_dependency 'rake',  '~> 12.3'
  gspec.add_development_dependency 'rdoc',  '~> 6.1'
  gspec.add_development_dependency 'rspec', '~> 3.8'

  gspec.add_runtime_dependency 'redis', '~> 3.3'
  gspec.add_runtime_dependency 'rack'
end
