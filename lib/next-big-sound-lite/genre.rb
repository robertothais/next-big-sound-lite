module NBS
  
  class Genre < Resource
    
    def self.resource
      super 'genres'
    end
    
    def self.artist(id)
      res = resource["artist/#{id}.json"].get
      JSON.parse(res)
    end
  end
  
end