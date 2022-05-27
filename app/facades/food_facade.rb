class FoodFacade
  def self.create_food
    json = FoodService.get_food_data

    json[:results].map do |data|
      Food.new(data)
  end
end
