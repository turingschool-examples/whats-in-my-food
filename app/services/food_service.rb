class FoodService
  class << self
    def foods(food)
      response = conn.get("/fdc/v1/foods/search?query=#{food}")
      parse_json(response)
    end

    def conn
      Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
        faraday.headers["X-API-KEY"] = ENV['api_key']
      end
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
