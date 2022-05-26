class FoodFacade
  class << self
    def search_for_foods(food)
      food_data = FoodService.get_data("search?query=#{food}")
      foods = food_data[:foods].map do |result|
        Food.new(result)
      end 
    end
  end
end
