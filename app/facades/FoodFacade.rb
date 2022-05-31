class FoodFacade
  def service
    FoodService.new
  end

  def self.search_food(search)
    data = service.search_food(search)
    data[:foods][0..9].map { |data| Food.new(data)}
  end
end
