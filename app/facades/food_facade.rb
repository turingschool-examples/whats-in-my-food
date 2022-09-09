class FoodFacade
  def self.food_finder(food_string)
    foods_data = FoodService.food_search(food_string)
    
    foods_data[:foods][0..9].map do |food_data|
      Food.new(foods_data[:totalHits], food_data)
    end
  end
end