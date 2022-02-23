# app/facades/food_facade.rb

class FoodFacade
  def self.total_hits(query)
    json = FoodService.foods_containing_ingredient(query)
    @total_hits = json[:totalHits].to_i
    # binding.pry
  end

  def self.foods_containing_ingredient(query)
    json = FoodService.foods_containing_ingredient(query)
    # binding.pry
    @foods = json[:foods].map do |food|
      Food.new(food)
    end
  end
end
