class FoodFacade

  def self.service(food)
    FoodService.get_details(food)
  end

  def self.food_info(info)
    food = service(info)

    food.map do |food_data|
      Food.new(food_data)
    end
  end

end
