# Rakefile
require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('next-big-sound-lite', '0.1.6') do |p|
  p.description    = "Thin wrapper for the Next Big Sound API."
  p.url            = "http://github.com/rpbertp13/next-big-sound-lite"
  p.author         = "Roberto Thais"
  p.email          = "roberto.n.thais@gmail.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = ["rest-client", "json"]
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }