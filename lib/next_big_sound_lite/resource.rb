module  NextBigSoundLite
  
  class Resource
    def self.resource(name)
      NextBigSoundLite.base[name]
    end
    
    def self.get(resource)
      begin
        parse resource.get
      # The API uses 400 Bad Request to indicate negative results
      # such as 'no results found'. 
      rescue RestClient::BadRequest => e
        false
      end      
    end
    
    def self.post(resource, params)
      begin
        parse resource.post(params)
      rescue RestClient::BadRequest => e
        false
      end          
    end
    
    def self.parse(response)
      res = JSON.parse(response)
      case res
      when Array
        if res.first.is_a? Hash
          res.map { |hash| Hashie::Mash.new hash }
        else
          res
        end
      when Hash
        Hashie::Mash.new res
      else
        res
      end
    end    
    
    # Next Big Sound returns some results as hashes with 
    # keys equal to id of the object and values as the 
    # relevant data. This creates an array that includes
    # the id within the object. 
    def self.idfy(hash)
      hash.to_a.map do |id, data|
        data.dup.tap { |d| d.id = id }
      end
    end
    
  end
  
end
  