class FoodsFacade
  def self.create_food(query)
    json = FoodsService.get_food_data(query)
    json[:foods].map do |data|
      Food.new(data)
    end.take(10)
  end

  def self.returned_items_number(query)
    json = FoodsService.get_food_data(query)
    json[:totalHits]
  end
end
