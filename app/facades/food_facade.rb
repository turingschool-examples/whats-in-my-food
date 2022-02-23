class FoodFacade
  def self.find_foods(item)
    foods = FoodService.find_foods_by_name(item)[:foods]
    foods.first(10).map do |data|
      Food.new(data)
    end
  end
end
