class FoodsFacade
  def self.get_list_of_foods
    foods_attributes = FoodsService.getting_list
    
    foods_attributes[:foods].map do |food|
      Food.new(food)
    end
  end
end
