class FoodFacade 
  def self.create_foods(ingredient)
    foods = FoodService.get_foods(ingredient)
    # require 'pry'; binding.pry 
    count = foods[:totalHits]
    foods.map do |food|
      Food.new(food, count)
    end
  end
end