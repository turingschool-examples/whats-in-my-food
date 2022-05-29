class FoodsFacade
  def self.create_food(query)
    json = FoodsService.get_food_data(query)
    json[:foods].map do |data|
      Food.new(data)
    end
  end
end
