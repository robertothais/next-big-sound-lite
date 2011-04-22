module NextBigSoundLite
  
  class Profile < Resource
    
    def self.resource
      super 'profiles'
    end
    
    def self.artist(id)
      get resource["artist/#{id}.json"]
    end
    
    def self.search(url)
      get resource["search.json?u=#{CGI.escape(url)}"] do |res|
        idfy res
      end
    end
    
    def self.add(artist_id, profiles)
      params = {
        :key => NextBigSoundLite.private_key,
        :profiles => profiles
      }
      post resource["add/#{artist_id}.json"], params
    end
    
  end
  
end