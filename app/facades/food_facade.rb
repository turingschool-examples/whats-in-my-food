class FoodFacade
  def self.search_for_food(query)
    json = FoodService.search_for_food(query)

    json[:foods].map do |food_data|
      Food.new(food_data)
    end
  end
end
