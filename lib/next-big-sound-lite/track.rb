module NBS
  
  class Track < Resource
    
    def self.resource
      super 'tracks'
    end
    
    def self.artist(id)
      res = resource["artist/#{id}.json"].get
      JSON.parse(res)
    end
    
    def self.profile(id)
      res = resource["profile/#{id}.json"].get
      JSON.parse(res)
    end
  end

end