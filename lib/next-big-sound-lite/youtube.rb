module NBS
  
  class Youtube < Resource
    
    def self.resource
      super 'youtube'
    end
    
    def self.artist(id)
      res = resource["artist/#{id}.json"].get
      JSON.parse(res)
    end
    
  end

end