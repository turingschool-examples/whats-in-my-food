class FoodFacade
  def self.find_foods(ingredient)
    # conn = Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
    #   faraday.headers["X-API-KEY"] = ENV['food_api_key']
    # end
    # response = conn.get("/fdc/v1/foods/search?query=#{ingredient}")
    # json = JSON.parse(response.body, symbolize_names: true)
    # @foods = json[:foods].first(10)
    json = FoodService.search_by_ingredient(ingredient)
    json[:foods].map do |food_info|
      Food.new(food_info)
    end.first(10)
  end
end
