# -*- encoding: utf-8 -*-
# stub: popper_js 1.16.0 ruby lib

Gem::Specification.new do |s|
  s.name = "popper_js".freeze
  s.version = "1.16.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Gleb Mazovetskiy".freeze]
  s.bindir = "exe".freeze
  s.date = "2020-01-13"
  s.description = "Works with Rails out of the box.".freeze
  s.email = ["glex.spb@gmail.com".freeze]
  s.homepage = "https://github.com/glebm/popper_js-rubygem".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.32".freeze
  s.summary = "Popper.js assets as a Ruby gem. https://popper.js.org/".freeze

  s.installed_by_version = "3.2.32" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.15"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.15"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
  end
end
