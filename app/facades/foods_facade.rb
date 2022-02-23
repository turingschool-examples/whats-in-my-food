class FoodsFacade
  def self.top_20_results(string)
    foods_list_data = FoodsService.get_foods(string)
    foods_list_data[:foods].first(10).map do |food|
      Food.new(food)
    end
  end
end
