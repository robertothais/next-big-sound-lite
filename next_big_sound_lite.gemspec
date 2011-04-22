# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "next_big_sound_lite/version"

Gem::Specification.new do |s|
  s.name        = "next-big-sound-lite"
  s.version     = NextBigSoundLite::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Roberto Thais"]
  s.email       = ["roberto.thais@gigmaven.com"]
  s.homepage    = ""
  s.summary     = %q{A small wrapper around the Next Big Sound API}
  s.description = %q{A small wrapper around the Next Big Sound API}

  s.rubyforge_project = "next-big-sound-lite"
  
  s.add_dependency "rest-client"
  s.add_dependency "hashie"
  s.add_dependency "json"
  
  s.add_dependency "rspec"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
