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
  spec.required_ruby_version = Gem::Requirement.new(">= 2.5.0")

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rails", "~> 6.0.3", ">= 6.0.3.3"
  spec.add_development_dependency "rails_admin", "~> 2.0.2"
  spec.add_development_dependency "capybara", "~> 2.7", ">= 2.7.0"
  spec.add_development_dependency "launchy", "~> 2.4", ">= 2.4.3"
  spec.add_development_dependency "shoulda-matchers", "~> 3.1"
  spec.add_development_dependency "selenium-webdriver", "~> 2.53", ">= 2.53.4"
  spec.add_development_dependency "factory_girl_rails", "~> 4.7", ">= 4.7.0"
  spec.add_development_dependency "faker", "~> 1.6", ">= 1.6.3"

  spec.add_runtime_dependency "carrierwave", "~> 2.0"
  spec.add_runtime_dependency "croppie_rails", "~> 1.2", ">= 1.2.0"
  spec.add_runtime_dependency "medium-editor-rails", "~> 2.1", ">= 2.1.0"
  spec.add_runtime_dependency "mini_magick", "~> 4.5", ">= 4.5.1"
  spec.add_runtime_dependency "friendly_id", "~> 5.1", ">= 5.1.0"
  spec.add_runtime_dependency "simple_form", "~> 5.0.2"
  spec.add_runtime_dependency "rails-html-sanitizer", "~> 1.0", ">= 1.0.3"
  spec.add_runtime_dependency "owlcarousel-rails", "~> 0"
end
