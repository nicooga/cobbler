$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'cobbler/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'cobbler'
  s.version     = Cobbler::VERSION
  s.authors     = %w|Nicolas\ Oga|
  s.email       = %w|2112.oga@gmail.com|
  s.homepage    = 'https://github.com/nicooga/cobbler'
  s.summary     = 'Ruby templating helpers and css for Rails apps'
  s.description = 'Bootstrap + bootstrap related addons + templating helpers for Ruby on Rails'

  s.files = Dir[*%w|{app,config,db,lib}/**/* MIT-LICENSE Rakefile README.rdoc|]
  s.test_files = Dir['spsec/**/*']

  s.add_dependency 'rails', '~> 4.0.5'
  s.add_dependency 'sass-rails', '>= 3.2'
  s.add_dependency 'bootstrap-sass', '~> 3.1.1'
end
