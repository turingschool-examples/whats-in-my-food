class FoodsFacade

  def foods_search(search_param)
    data = FoodsService.search_foods(query)
    data.map do |food_data|
      Food.new(food_data)
    end
  end
end
