class FoodFacade 
  def self.create_foods(ingredient)
    foods = FoodService.get_foods(ingredient)

    count = foods[:totalHits] #totalHits data
    foods[:foods][0..9].map do |food| #range to get only 10 results; i could also just set this result limit in the pages params in the api call
      Food.new(food, count)
    end
  end
end