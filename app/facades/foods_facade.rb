class FoodsFacade
  def self.get_list(q)
    json = FoodsService.get_list_of_foods(q)
    json[:foods][0..9].map do |food|
      Food.new(food)
    end 
  end

  def self.food_count(q)
    FoodsService.get_list_of_foods(q)[:totalHits]
  end
end 