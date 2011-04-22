require 'cgi'

module NextBigSoundLite
  
  class Service < Resource
    
    def self.resource
      super 'services.json'
    end
        
    def self.list
      res = get resource
      idfy res
    end
    
  end

end