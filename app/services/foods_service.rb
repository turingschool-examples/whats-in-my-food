class FoodsService
  class << self

    def total_foods(query)
      response = conn.get("/fdc/v1/foods/search?query=#{query}&pageSize=10&sortOrder=asc")
      parse_json(response)
    end

    def search_foods(query)
      response = conn.get("/fdc/v1/foods/search?query=#{query}&pageSize=10&sortOrder=asc")
      body = parse_json(response)
      body[:foods]
    end

    private

    def conn
      Faraday.new("https://api.nal.usda.gov") do |req|
        req.params['api_key'] = ENV['food_data_key']
      end
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
