Gem::Specification.new do |spec|
  spec.name          = 'running_track'
  spec.version       = '1.0.6'
  spec.date          = '2015-03-23'
  spec.summary       = "Find your running track"
  spec.description   = "A simple gem that prints running tracks information from data.mos.ru site"
  spec.authors       = [ "Evgeniy Fateev" ]
  spec.email         = 'spaceflow@gmail.com'
  spec.homepage      = 'http://rubygems.org/gems/running_track'
  spec.license       = 'MIT'

  spec.files         = [
    "lib/running_track.rb",
    "lib/running_track/data.rb",
    "lib/running_track/table.rb"
  ]

  spec.add_runtime_dependency 'terminal-table', '~> 1.4'
  spec.add_runtime_dependency 'activesupport', '~> 4.0'

  spec.requirements = %w{
    Internet\ connection
    A\ good\ mood
  }
end
