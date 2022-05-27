class FoodService < BaseService
  def self.search_by_ingredient(ingredient)
    response = conn.get("/fdc/v1/foods/search?query=#{ingredient}&sortBy=dataType.keyword&api_key=#{ENV['food_api_key']}")

    get_json(response)
  end
end
