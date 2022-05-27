class FoodService < BaseService
  def self.search_by_ingredient(ingredient)
    response = conn.get("/fdc/v1/foods/search?query=sweet%20potatoes&pageSize=10&sortBy=dataType.keyword&api_key=#{ENV['food_api_key']}")
    # binding.pry
    get_json(response)
  end
end
