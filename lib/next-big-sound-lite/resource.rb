module  NBS
  
  class Resource
    def self.resource(name)
      NBS.base[name]
    end
  end
  
end
  