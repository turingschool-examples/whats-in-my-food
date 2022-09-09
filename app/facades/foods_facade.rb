class FoodsFacade
  def self.get_list(q)
    json = FoodsService.get_list_of_foods(q)
    binding.pry
    json[:data].map do |food|
      Food.new(q)
    end 
  end
end 