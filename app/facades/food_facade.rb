class FoodFacade
  def search(food)
    json = FoodService.search_food(food)
    json.map do |result|
      Food.new(result)
    end
  end
end