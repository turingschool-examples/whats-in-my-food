class FoodFacade

  def self.search_term(term)
        data = FoodService.search_for_food(term)
    foods = []
    data.each do |food|
      foods << Food.new(food)
    end
    foods

  end 

end 