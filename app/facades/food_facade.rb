class FoodFacade

  def self.ten_food_search(search_param)
    foods_data = FoodService.food_search(search_param)[:foods]
    foods_data[0..9].map do |food_data|
      Food.new(food_data)
    end
  end
end
