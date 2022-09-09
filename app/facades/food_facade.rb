class FoodFacade
  def self.search(ingredient)
    parsed_json = FoodService.foods(ingredient)
    # require 'pry'; binding.pry 
    parsed_json[:foods].map do |food_json|
      FoodPoro.new(food_json)
    end
  end
end