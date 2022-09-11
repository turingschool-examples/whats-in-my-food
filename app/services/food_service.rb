class FoodService
  class << self
    def call_for_a_food(food_name)
      response = connection.get("/fdc/v1/foods/search?&query=sweet%20potatoes")
      parse_data(response)
    end

  private
    def connection
      Faraday.new(url: "https://api.nal.usda.gov") do |faraday|
        faraday.params["api_key"] = ENV['usda_key']
      end
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end