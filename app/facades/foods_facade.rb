class FoodsFacade
  def self.total_items(ingredient)
    result = FoodsService.get_data("search?query=#{ingredient}")
    result[:totalHits]
  end

  def self.first_ten_foods(ingredient)
    result = FoodsService.get_data("search?query=#{ingredient}")
    result[:foods][1..10].map do |food_data|
      Food.new(food_data)
    end
  end
end
