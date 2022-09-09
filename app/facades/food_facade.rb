class FoodFacade

  def self.find_food(food)
    food_finder = FoodService.find_food(food)
    food_finder[:foods].map do |data|
      Food.new(data, food_finder[:totalHits])
    end
  end
end
