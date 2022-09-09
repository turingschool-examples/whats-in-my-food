class TmdbService

 def get_url
    Faraday.new("https://api.nal.usda.gov") do |faraday|
        faraday.params["api_key"] = ENV['api_key']
    end
  end
end
