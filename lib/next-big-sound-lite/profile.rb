module NBS
  
  class Profile < Resource
    
    def self.resource
      super 'profiles'
    end
    
    def self.artist(id)
      res = resource["artist/#{id}.json"].get
      JSON.parse(res)
    end
    
    def self.search(url)
      res = resource["search.json?u=#{CGI.escape(url)}"].get
      JSON.parse(res)
    end
    
    def self.add(artist_id, url)
      res = resource["add/#{artist_id}.json?u=#{CGI::escape(url)}&k=#{NBS.private_key}"].get
      JSON.parse(res)
    end
    
  end
  
end