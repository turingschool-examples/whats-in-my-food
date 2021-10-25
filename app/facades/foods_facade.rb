class FoodsFacade
  def self.total_items(ingredient)
    result = FoodsService.get_data("/search", ingredient)
  end

  def self.first_ten_foods

  end
end
