class FoodsFacade
  def self.get_list(q)
    json = FoodsService.get_list_of_foods(q)
    json[:foods][0..9].map do |food|
      # binding.pry
      Food.new(food)
    end 
  end

  def self.food_count(q)
    FoodService.get_list_of_foods(q)[:totalHits]
  end
end 