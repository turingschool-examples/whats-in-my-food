class FoodFacade
  def self.search(ingredient)
    parsed_json = FoodService.foods(ingredient)
    parsed_json[:foods].map do |food_json|
      FoodPoro.new(food_json)
      # require 'pry'; binding.pry 
    end
  end
end