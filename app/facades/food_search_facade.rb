class FoodSearchFacade

  def self.search_foods(query)
    results = service.get_foods(query)
    foods = results[:foods].map { |data| Food.new(data) }
  end

  def self.service
    @_service ||= FoodSearchService.new
  end

end
