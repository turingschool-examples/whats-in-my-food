class Facade
  def food_search(query)
    food_search(query).service.map {|food| FoodSearch.new(food)}
  end

  def service
    FoodService.new
  end
end 
