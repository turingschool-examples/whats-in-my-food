class FoodFacade
  def food_search(query)
    service.food_search(query)[:foods].map {|food| FoodSearch.new(food)}
  end

  def service
    FoodService.new
  end
end
