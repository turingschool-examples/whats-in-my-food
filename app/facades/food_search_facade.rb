class FoodSearchFacade
  def self.get_foods(query)
    FoodService.get_food_details(query)
    json[:foods][0..9].map do |food_data|
      Food.new(food_data)
    end
  end
end