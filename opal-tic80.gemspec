# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'opal-tic80'
  spec.version       = '0.1.0'
  spec.authors       = ['bggd']

  spec.summary       = 'opal wrapper for TIC-80'
  spec.description   = 'opal wrapper for TIC-80'
  spec.homepage      = 'https://github.com/bggd/opal-tic80'
  spec.license       = 'BSL-1.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.require_paths = ['lib']

  spec.add_dependency 'opal', '~> 1.0'
end
