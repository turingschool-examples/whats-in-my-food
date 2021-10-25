class FoodsFacade
  def self.total_foods(query)
    data = FoodsService.foods_query(query)

    data[:totalHits]
  end

  def self.first_ten_foods(query)
    data = FoodsService.foods_query(query)

    foods_data = data[:foods]
    foods_data[0..9].map do |food_data|
      Food.new(food_data)
    end
  end
end
