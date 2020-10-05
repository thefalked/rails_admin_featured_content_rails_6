require_relative 'lib/rails_admin_featured_content_rails_6/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_admin_featured_content_rails_6"
  spec.version       = RailsAdminFeaturedContentRails6::VERSION
  spec.authors       = ["Giuliano Crivelli"]
  spec.email         = ["giuliano@agenciaw3.digital"]

  spec.summary       = "Easy way for create featured contents using rails_admin"
  spec.description   = "Easy way for create featured contents using rails_admin on rails 6"
  spec.homepage      = "https://github.com/thefalked/rails_admin_featured_content_rails_6"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
