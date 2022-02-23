class FoodsFacade
  def self.search_results(query)
    json = FoodsService.search_term(query)
    @food_results = json[:foods].map do |food_data|
      Food.new(food_data)
    end
  end
end
