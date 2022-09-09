class FoodFacade 
  def self.create_foods(ingredient)
    foods = FoodService.get_foods(ingredient)
    # require 'pry'; binding.pry 
    foods[0..9].map do |food|
      Food.new(food)
    end
  end
end