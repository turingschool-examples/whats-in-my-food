class FoodFacade
  def find_food(food)
    capture = service.find_food(food)
    capture[:foods].map do |food_data|
      Food.new(food_data, capture[:totalHits])
    end
  end

  def service
    FoodService.new
  end 
end
