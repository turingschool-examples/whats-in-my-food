class FoodFacade
  def self.search_foods(food)
    results = FoodService.search_foods(food)
    results[:foods].map do |food|
      Food.new(food)
    end 
  end
end
