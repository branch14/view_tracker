$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "view_tracker/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "view_tracker"
  s.version     = ViewTracker::VERSION
  s.authors     = ["Phil Hofmann"]
  s.email       = ["phil@branch14.org"]
  s.homepage    = "http://branch14.org/view_tracker"
  s.summary     = "track the view, which is render by rails"
  s.description = "track the view, which is render by rails"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.1"

  # s.add_development_dependency "sqlite3"
end
