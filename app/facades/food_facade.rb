class FoodFacade
  require "./app/services/food_service.rb"

  def self.get_food_items(food)
    items = FoodService.call_for_items(food)
    items[:foods][0..9].map do |data|
      FoodItem.new(data)
    end
  end
end
