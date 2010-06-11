module NBS
  
  class Artist < Resource
    
    def self.resource
      super 'artists'
    end
    
    def self.view(id)
      res = resource["view/#{id}.json"].get
      JSON.parse(res)
    end
    
    def self.search(q)
      res = resource["search.json?q=#{CGI.escape(q)}"].get
      JSON.parse(res)
    end
    
    def self.ranking(type, ids)
      ids = ids.join('-')
      res = resource["rank/#{type}/#{ids}.json"].get
      JSON.parse(res)
    end  
    
    def self.add(name)
      res = resource["add.json?n=#{name}&k=#{NBS.private_key}"].get
      JSON.parse(res)
    end
  end
  
end