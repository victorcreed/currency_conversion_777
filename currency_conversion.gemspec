Gem::Specification.new do |s|
  s.name        = 'currency_conversion'
  s.version     = '0.0.3'
  s.summary     = "Currency Conversion"
  s.description = "Currency conversion gem"
  s.add_runtime_dependency 'rest-client', ['~> 1.6.7']
  s.add_runtime_dependency 'json', ['~> 1.7.5']
  s.authors     = ["Victor Creed", "Muaaz Rafi"]
  s.email       = 'a2ninek@yahoo.com'
  #s.files       = ["lib/currency_conversion.rb"]
  s.files = `git ls-files`.split("\n")
  s.require_paths = ["lib"]

end
