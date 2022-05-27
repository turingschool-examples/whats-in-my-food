class FoodDataFacade
  def service
    FoodDataService.new
  end

  def list_of_food_items
    service.get_food_items(url)
  end
end
