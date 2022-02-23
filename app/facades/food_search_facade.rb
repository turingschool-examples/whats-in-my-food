class FoodSearchFacade

  def self.search_foods(query)
    foods = service.get_foods(query)
  end

  def self.service
    @_service ||= FoodSearchService.new
  end

end
