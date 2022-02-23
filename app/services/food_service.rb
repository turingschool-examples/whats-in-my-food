class FoodService
  class << self
    def find_foods(food)
      response = conn.get("/fdc/v1/foods/search?query=#{food}")
      body = parse_json(response)
    end

    private

    def conn
      Faraday.new('https://api.nal.usda.gov') do |req|
        req.params['api_key'] = ENV['food_api_key']
      end
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end