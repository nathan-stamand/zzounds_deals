require_relative 'lib/zzounds_deals/version'

Gem::Specification.new do |spec|
  spec.name          = "zzounds_deals"
  spec.version       = ZzoundsDeals::VERSION
  spec.authors       = ["nathan-stamand"]
  spec.email         = ["nathansaint810@gmail.com"]

  spec.summary       = %q{'Pulls deals from Zzounds website for the user.'}
  spec.description   = %q{"The user is presented with a list of deals from zzounds.com and can select certain deals to get more details about it."}
  spec.homepage      = "https://github.com/nathan-stamand/zzounds_deals"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/nathan-stamand/zzounds_deals"
  spec.metadata["changelog_uri"] = "https://github.com/nathan-stamand/zzounds_deals"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'nokogiri'
  spec.add_dependency 'rake', '>= 12.3.3'
  spec.add_development_dependency 'pry'
end
