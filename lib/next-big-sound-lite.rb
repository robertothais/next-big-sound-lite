require 'rest_client'

#for version 2.0 of the NBS API
module NBS

  KEY = "key"
  BASE = RestClient::Resource.new("http://#{KEY}.api2.nextbigsound.com")
  
  class Artist
    
    @resource = BASE['artists']
    
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
    
    @resource = BASE['genres']
    
    def self.artist(id)
      res = @resource["artist/#{id}.json"].get
      JSON.parse(res)
    end
  end
  
  class Metric
    
    @resource = BASE['metrics']
    
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
    
    @resource = BASE['profiles']
    
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
    
    @resource = BASE['services']
    
    def self.list
      JSON.parse(@resource['.json'].get)
    end
    
  end
  
  class Track
    
    @resource = BASE['tracks']
    
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
    
    @resource = BASE['youtube']
    
    def self.artist(id)
      res = @resource["artist/#{id}.json"].get
      JSON.parse(res)
    end
    
  end
  
end