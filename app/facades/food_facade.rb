class FoodFacade

  def self.foods_search(query)
    FoodService.foods_search(query)[:foods].map do |data|
      Food.new(data)
    end
  end

  def self.search_info(query)
    info = SearchInfo.new(FoodService.foods_search(query))
  end
end
