module NextBigSoundLite
  
  class Metric < Resource
    
    def self.resource
      super 'metrics'
    end
    
    def self.profile(id)
      raise NotImplementedError
    end
    
    def self.artist(id)
      raise NotImplementedError
    end
  end

end