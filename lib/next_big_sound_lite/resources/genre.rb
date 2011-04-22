module NextBigSoundLite
  
  class Genre < Resource
    
    def self.resource
      super 'genres'
    end
    
    def self.artist(id)
      get resource["artist/#{id}.json"] do |res|
        idfy res
      end
    end
  end
  
end