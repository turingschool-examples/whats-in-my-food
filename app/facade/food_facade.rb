class FoodFacade 
  def self.create_foods(ingredient)
    foods = FoodService.get_foods(ingredient)
    foods.map do |food|
      Food.new(food)
    end
  end
end