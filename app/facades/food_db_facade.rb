class FoodDBFacade
  def self.searched_food_results(searched_query)
    parsed_json = FoodDBService.get_searched_foods(searched_query)
    parsed_json[:foods].map do |food_data|
      Food.new(food_data)
    end
  end
end