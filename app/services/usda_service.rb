class UsdaService

   def self.get_url
      Faraday.new("https://api.nal.usda.gov") do |faraday|
        faraday.params["api_key"] = ENV['usda_key']
      end
    end

    def self.name_search(name)
      @_name_search = JSON.parse(get_url.get("/fdc/v1/foods/search?query=#{name}").body, symbolize_names: true)
    end

    def self.name_search_items(name)
      @_name_search = JSON.parse(get_url.get("/fdc/v1/foods/search?query=#{name}").body, symbolize_names: true)[:foods].first(10)
    end



end
