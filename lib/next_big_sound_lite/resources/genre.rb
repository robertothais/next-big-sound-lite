module NextBigSoundLite
  
  class Genre < Resource
    
    def self.resource
      super 'genres'
    end
    
    def self.artist(id)
      res = get resource["artist/#{id}.json"]
      idfy res
    end
  end
  
end