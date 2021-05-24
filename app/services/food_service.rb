class FoodService
  class << self
    def call_for_a_food(food)
      response = conn.get("/fdc/v1/foods/search?&query=#{food}&api_key=#{ENV['food_api_key']}")
      parse_data(response)
    end

    private
    def conn
      conn = Faraday.new("https://api.nal.usda.gov")
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end