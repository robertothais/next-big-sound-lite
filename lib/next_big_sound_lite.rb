#For version 3.0 of the Next Big Sound API

require 'rest_client'
require 'json'
require 'hashie'

require 'next_big_sound_lite/resource'
require 'next_big_sound_lite/resources/artist'
require 'next_big_sound_lite/resources/genre'
require 'next_big_sound_lite/resources/metric'
require 'next_big_sound_lite/resources/profile'
require 'next_big_sound_lite/resources/service'

module NextBigSoundLite
  
  class << self
    attr_reader :base
    attr_accessor :private_key
  end
  
  def self.api_key=(key)
    @base = RestClient::Resource.new("http://#{key}.api3.nextbigsound.com")
  end  
    
  self.api_key = 'key'

end