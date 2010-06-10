require 'rest_client'
require 'json'

#for version 2.0 of the NBS API
module NBS
  
  
  def self.api_key=(key)
    @base = RestClient::Resource.new("http://#{key}.api2.nextbigsound.com")
  end  
  
  def self.base
    @base
  end
  
  self.api_key = 'key'
  
  class Artist
    
    @resource = NBS.base['artists']
    
    def self.view(id)
      res = @resource["view/#{id}.json"].get
      JSON.parse(res)
    end
    
    def self.search(q)
      res = @resource["search.json?q=#{CGI.escape(q)}"].get
      JSON.parse(res)
    end
    
    def self.ranking(type, ids)
      ids = ids.join('-')
      res = @resource["rank/#{type}/#{ids}.json"].get
      JSON.parse(res)
    end  
    
  end
  
  class Genre
    
    @resource = NBS.base['genres']
    
    def self.artist(id)
      res = @resource["artist/#{id}.json"].get
      JSON.parse(res)
    end
  end
  
  class Metric
    
    @resource = NBS.base['metrics']
    
    def self.profile(id)
      res = @resource["profile/#{id}.json"].get
      JSON.parse(res)
    end
    
    def self.artist(id)
      res = @resource["artist/#{id}.json"].get
      JSON.parse(res)
    end
  end
  
  class Profile
    
    @resource = NBS.base['profiles']
    
    def self.artist(id)
      res = @resource["artist/#{id}.json"].get
      JSON.parse(res)
    end
    
    def self.search(url)
      res = @resource["search.json?u=#{CGI.escape(url)}"].get
      JSON.parse(res)
    end
  end
  
  class Service
    
    @resource = NBS.base['services']
    
    def self.list
      JSON.parse(@resource['.json'].get)
    end
    
  end
  
  class Track
    
    @resource = NBS.base['tracks']
    
    def self.artist(id)
      res = @resource["artist/#{id}.json"].get
      JSON.parse(res)
    end
    
    def self.profile(id)
      res = @resource["profile/#{id}.json"].get
      JSON.parse(res)
    end
    
  end
  
  class Youtube
    
    @resource = NBS.base['youtube']
    
    def self.artist(id)
      res = @resource["artist/#{id}.json"].get
      JSON.parse(res)
    end
    
  end
  
end