# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "fuzzytime/version"

Gem::Specification.new do |s|
  s.name        = "fuzzytime"
  s.version     = Fuzzytime::VERSION
  s.authors     = ["Paul Maki"]
  s.email       = ["paul.maki@gmail.com"]
  s.homepage    = "https://github.com/paulmaki/fuzzytime"
  s.summary     = %q{Converts times into "fuzzy" output}
  s.description = %q{
    Sample output:
    2:30AM => half past 2
    7:50AM => 10 til 8
    12:00PM => noon
    5:15PM => quarter past 5
    9:00PM => 9 o'clock
    10:17PM => 17 past 10
    12:00AM => midnight
  }

  s.rubyforge_project = "fuzzytime"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
end
