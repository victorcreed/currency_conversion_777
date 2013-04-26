Gem::Specification.new do |s|
  s.name        = 'currency_conversion'
  s.version     = '0.0.0'
  s.date        = '2013-04-26'
  s.summary     = "Currency Conversion"
  s.description = "Currency conversion gem"
  gem.add_runtime_dependency 'rest-client', '~> 1.6.7'
  gem.add_runtime_dependency 'json', '~> 1.7.5'
  s.authors     = ["Victor Creed"]
  s.email       = 'a2ninek@yahoo.com'
  s.files       = ["lib/currency_conversion.rb"]
end
