Gem::Specification.new do |s|
  s.name        = 'fake-tests'
  s.version     = '0.0.1'
  s.date        = '2014-05-07'
  s.summary     = "Fake tests to fool your coworkers!"
  s.description = "Need a nap? Run some 'tests'."
  s.authors     = ["Chris Svenningsen"]
  s.email       = 'crsven@gmail.com'
  s.files       = ["lib/fake-tests.rb"]
  s.homepage    = 'http://github.com/crsven/fake-tests'
  s.license     = 'MIT'
  s.bindir      = 'bin'
  s.files       = `git ls-files`.split($/)
  s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.add_runtime_dependency 'trollop'
end
