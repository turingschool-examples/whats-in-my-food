class FoodFacade

  def self.search_food(search)
    data = FoodService.search_food(search)
    data[:foods][0..9].map { |data| Food.new(data)}
  end
end
