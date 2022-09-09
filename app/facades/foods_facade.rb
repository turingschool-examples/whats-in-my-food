class FoodsFacade
  def self.get_list(q)
    json = FoodsService.get_list_of_foods(q)
    json[:foods].map do |food|
      binding.pry
    end 
  end
end 