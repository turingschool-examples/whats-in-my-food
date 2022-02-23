class FoodFacade 
  def self.search_foods(keyword)
    response = FoodService.search_foods(keyword)
    ten_foods = response[:foods].take(10)

    foods = ten_foods.map do |food|
      Food.new(food)
    end

    {total_results: response[:totalHits], foods: foods}
  end
end