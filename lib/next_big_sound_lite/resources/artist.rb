module NextBigSoundLite
  
  class Artist < Resource
    
    def self.resource
      super 'artists'
    end
    
    def self.find(id)
      get resource["view/#{id}.json"]
    end
    
    def self.search(q)
      res = get resource["search.json?q=#{CGI.escape(q)}"]
      idfy res
    end
    
    def self.ranking(type, ids)
      ids = ids.join('-')
      get resource["rank/#{type}/#{ids}.json"]
    end  
    
    def self.add(name, profiles)
      params = {
        :key => NextBigSoundLite.private_key,
        :name => name,
        :profiles => profiles
      }
      post resource["add.json"], params
    end
  end
  
end