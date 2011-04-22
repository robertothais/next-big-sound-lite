require 'cgi'

module NextBigSoundLite
  
  class Service < Resource
    
    def self.resource
      super 'services.json'
    end
        
    def self.list
      get resource do |res|
        idfy res
      end
    end
    
  end

end