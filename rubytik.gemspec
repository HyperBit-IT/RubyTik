# frozen_string_literal: true

require_relative "lib/rubytik/version"

Gem::Specification.new do |spec|
  spec.name = "rubytik"
  spec.version = Rubytik::VERSION
  spec.authors = ["Francesco Masala"]
  spec.email = ["fmasala@hyperbit.it"]

  spec.summary = "RubyTik is a Ruby library for interacting with the Mikrotik RouterOS HTTPS API."
  spec.description = "RubyTik is a Ruby library for interacting with the Mikrotik RouterOS HTTPS API."
  spec.homepage = "https://gitlab.com/HyperBit-IT/RubyGems/RubyTik"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://gitlab.com/HyperBit-IT/RubyGems/RubyTik"
  spec.metadata["changelog_uri"] = "https://gitlab.com/HyperBit-IT/RubyGems/RubyTik/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
