class FoodService
  class << self
    def call_for_a_food(food)
      response = connection.get("/v1/foods/search?query=#{food}")
      binding.pry
      parse_data(response)
    end

  private
    def connection
      Faraday.new(url: "https://api.nal.usda.gov/fdc") do |faraday|
        faraday.params["api_key"] = ENV['food_api_key']
      end
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
