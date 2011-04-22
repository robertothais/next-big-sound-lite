module NextBigSoundLite
  
  class Artist < Resource
    
    def self.resource
      super 'artists'
    end
    
    def self.find(id)
      get resource["view/#{id}.json"]
    end
    class << self; alias :view :find; end
    
    def self.search(q)
      get resource["search.json?q=#{CGI.escape(q)}"] do |response|
        idfy response
      end
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