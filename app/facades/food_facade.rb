class FoodFacade 
   
  class << self

    def foods_by_keyword(food)
      data = FoodService.foods_by_search(food)
      @foods = data[:foods].map do |food|
        Food.new(food)
      end
      @foods[0..9]
    end

    def count_foods(food)
      data = FoodService.foods_by_search(food)
      data[:totalHits]
    end
  end
end

