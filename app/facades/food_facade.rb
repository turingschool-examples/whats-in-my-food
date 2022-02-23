class FoodFacade 
  def self.search_foods(keyword)
    response = FoodService.search_foods(keyword)
    foods = response[:foods].take(10)

    foods.map do |food|
      Food.new(food)
    end
  end
end