Gem::Specification.new do |spec|
  spec.name          = 'checkspell'
  spec.version       = '0.0.2'
  spec.date          = '2016-03-27'
  spec.summary       = "Spell checking"
  spec.description   = "A simple gem that spell check from yandex api "
  spec.authors       = [ "Dmitry Ovechkin" ]
  spec.email         = 'job.dmitry88@gmail.com'
  spec.homepage      = 'http://rubygems.org/gems/checkspell'
  spec.license       = 'MIT'

  spec.files         = [
    "lib/checkspell.rb",
    "lib/checkspell/yandexspell.rb"
  ]

  spec.add_runtime_dependency 'json', '~> 1.8'

  spec.requirements = %w{
    Internet\ connection
    Text\ that\ you\ want\ to\ check
  }
end
