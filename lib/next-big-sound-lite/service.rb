module NBS
  
  class Service < Resource
    
    def self.resource
      super 'services'
    end
        
    def self.list
      JSON.parse(resource['.json'].get)
    end
    
  end

end