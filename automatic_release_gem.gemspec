# frozen_string_literal: true

require_relative 'lib/automatic_release_gem/version'

Gem::Specification.new do |spec|
  spec.name          = 'automatic_release_gem'
  spec.version       = AutomaticReleaseGem::VERSION
  spec.authors       = ['Marcelo Toledo']
  spec.email         = ['marcelotoledo5000@gmail.com']

  spec.summary       = 'To test automatic publication of a gem by GitHub-Actions.'
  spec.description   = 'To test automatic publication of a gem by GitHub-Actions.'
  spec.homepage      = 'https://github.com/marcelotoledo5000/automatic_release_gem'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.5.3')

  # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/marcelotoledo5000/automatic_release_gem'
  spec.metadata['changelog_uri'] = 'https://github.com/marcelotoledo5000/automatic_release_gem/blob/master/CHANGELOG.md'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency 'example-gem', '~> 1.0'
end
