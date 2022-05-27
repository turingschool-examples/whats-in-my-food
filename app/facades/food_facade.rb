class FoodFacade

  def self.top_foods(ingredient)
    results = {hits: 0, foods: []}
    data = FoodService.food_search_endpoint(ingredient)
    results[:hits] = data[:totalHits]
    data[:foods].each do |food|
      food_data = {
        gtinUpc: food[:gtinUpc],
        description: food[:description],
        brandOwner: food[:brandOwner],
        ingredients: food[:ingredients]
      }
      results[:foods] << Food.new(food_data)
    end
    results
  end
end