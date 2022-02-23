class FoodFacade

  def self.food_info(food)
    json = FoodService.food_info(food)
    total = json[:totalHits]
    json[:foods][0..9].map do |food_info|
      Food.new(food_info, total)
    end
  end
end
