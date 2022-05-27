class FoodFacade
  def self.get_foods(params)
    FoodService.get_searched_food(params).map { |data| Food.new(data) }
  end
end
