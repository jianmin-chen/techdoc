# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "techdoc-jekyll-theme"
  spec.version       = "0.1.5"
  spec.authors       = ["jianmin-chen"]
  spec.email         = ["jianmin0chen@gmail.com"]

  spec.summary       = "TechDoc is a Jekyll theme designed for writing technical documentation! It's quick and easy to set up."
  spec.homepage      = "https://jianmin-chen.github.io/techdoc/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll"
  spec.add_runtime_dependency "jekyll-remote-theme"
  spec.add_runtime_dependency "github-pages"
end
