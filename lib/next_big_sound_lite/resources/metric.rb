module NextBigSoundLite
  
  class Metric < Resource
    
    ALLOWED_METRICS = %w(all plays fans views comments downloads likes price)
    
    def self.resource
      super 'metrics'
    end
    
    # start and end can be either a Date or Time object
    def self.profile(id, params = {})
      get resource["profile/#{id}.json?#{querify params}"]
    end
    
    def self.artist(id, params = {})
      get resource["artist/#{id}.json?#{querify params}"] do |response|
        response.map do |metric|
          Hashie::Mash.new Hash[metric.to_a.map { |k,v| [k.downcase, v] }]
        end
      end
    end
    
    private
    
      def self.querify(params)
        params[:start] &&= format_time(params[:start])
        params[:end] &&= format_time(params[:end])
        params[:metric] = (ALLOWED_METRICS & [params[:metric]]).first
        params.to_a.map do |k,v|
          "#{k}=#{CGI.escape(v)}" if !!v
        end.compact.join("&")
      end 
    
      def self.format_time(obj)
        out = case obj
        when Date
          Time.local(obj.year, obj.mon, obj.mday)
        when Time
          obj
        else
          raise ArgumentError, "start/end times need to be Date or Time objects"
        end
        out.to_i.to_s
      end
    
  end

end