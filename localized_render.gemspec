$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "localized_render/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "localized_render"
  s.version     = LocalizedRender::VERSION
  s.authors     = ["Danil Pismenny"]
  s.email       = ["danil@brandymint.ru"]
  s.homepage    = "https://github.com/BrandyMint/localized_render"
  s.summary     = "Отображаем мультиязычные поля в табах"
  s.description = "Добавляет метод localized_render для поддержки globalize-полей"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.1"
  s.add_dependency "globalize"

  s.add_development_dependency "sqlite3"
end
