class FoodsFacade

  def self.search_ingredient(ingredient)
    data = FoodsService.search_ingredient(ingredient)[:foods]
    data.map { |datum| Food.new(datum)}
  end

end