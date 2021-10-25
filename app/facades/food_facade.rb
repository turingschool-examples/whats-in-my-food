class FoodFacade
  def self.search_results(search)
    data = FoodsService.food_search_results(search)
    foods = data[:foods].filter_map do |food|
      Food.new(food)

      #Need to make sure the searched ingredient is listed in the ingredients
        #currently listing results where the searched item is listed in description or Ingredients

      # if !food[:ingredients].nil?
      #   if food[:ingredients].include?(search)
      #     Food.new(food)
      #   end
      # end

    end
    foods.take(10)
  end

  def self.total_results(search)
    data = FoodsService.food_search_results(search)
    number = data[:totalHits]
  end
end
