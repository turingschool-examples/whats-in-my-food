class FoodFacade
  def self.foods(food)
    json = FoodService.search_foods(food)
    count = json[:totalHits]
    json[:foods].map do |food_data|
      Food.new(food_data, count)
    end

  end
end
