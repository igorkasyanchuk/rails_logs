$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "rails_logs/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "rails_logs"
  spec.version     = RailsLogs::VERSION
  spec.authors     = ["Igor Kasyanchuk"]
  spec.email       = ["igorkasyanchuk@gmail.com"]
  spec.homepage    = "https://github.com/igorkasyanchuk/rails_logs"
  spec.summary     = "Monitor Rails logs in browser"
  spec.description = "Monitor Rails logs in browser"
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails"

  spec.add_development_dependency "sqlite3"
end
