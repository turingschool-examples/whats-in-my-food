class FoodFacade
  def self.search(food)
    json = FoodService.search_food(food)
    json[:foods].map do |food_data| 
      Food.new(food_data)
    end
  end

  def self.hit_count(food)
    json = FoodService.search_food(food)
    json[:totalHits]
  end
end