# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "dorian-yaml-map"
  s.version = File.read("VERSION").strip
  s.summary = "maps yaml to yaml with ruby code"
  s.description = s.summary
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.com"
  s.files = ["bin/yaml-map"]
  s.executables << "yaml-map"
  s.homepage = "https://github.com/dorianmariecom/dorian-yaml-map"
  s.license = "MIT"
  s.metadata = { "rubygems_mfa_required" => "true" }
  s.add_dependency "dorian-arguments"
  s.add_dependency "dorian-to_struct"
  s.add_dependency "yaml"
  s.required_ruby_version = ">= 3"
end
