class FoodsFacade

  def self.ten_foods(query)
    foods_list = FoodDataService.parsed_search_response(query)[:foods].take(10)
    foods_list.map do |food|
      Food.new(food)
    end
  end
end
