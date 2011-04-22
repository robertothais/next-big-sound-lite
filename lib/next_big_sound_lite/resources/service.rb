require 'cgi'

module NextBigSoundLite
  
  class Service < Resource
    
    def self.resource
      super 'services.json'
    end
        
    def self.list
      get resource do |response|
        idfy response
      end
    end
    
  end

end