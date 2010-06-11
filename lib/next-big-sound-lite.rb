#For version 2.0 of the Next Big Sound API

require 'rest_client'
require 'json'
require 'cgi'

require 'next-big-sound-lite/resource'
require 'next-big-sound-lite/artist'
require 'next-big-sound-lite/genre'
require 'next-big-sound-lite/metric'
require 'next-big-sound-lite/profile'
require 'next-big-sound-lite/service'
require 'next-big-sound-lite/track'
require 'next-big-sound-lite/youtube'

module NBS
  
  class << self
    attr_reader :base
    attr_reader :private_key
  end
  
  def self.api_key=(key)
    @base = RestClient::Resource.new("http://#{key}.api2.nextbigsound.com")
  end  
  
  def self.private_key=(key)
    @private_key = key
  end
  
  self.api_key = 'key'

end

