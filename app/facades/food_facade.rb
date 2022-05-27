class FoodFacade
  def self.search_by_ingredient(ingredient)
    json = FoodService.search_by_ingredient(ingredient)

    json[:foods][0..9].map do |food_data|
      Food.new(food_data)
    end
  end
end
