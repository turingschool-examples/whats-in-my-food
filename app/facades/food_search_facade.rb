class FoodSearchFacade

  def self.search_foods(query)
    results = service.get_foods(query)
    poros = results[:foods].map { |data| Food.new(data) }

    foods = []
    poros.each do |food|
      if food.ingredients != nil
        if food.ingredients.include? query.upcase
          foods << food
        end
      end
    end
    foods
  end

  def self.service
    @_service ||= FoodSearchService.new
  end

end
