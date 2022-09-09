class FoodFacade

  def self.create_food_search(keyword)
    response = FoodService.get_food_search(keyword)

    Food.new(response)
  end
end