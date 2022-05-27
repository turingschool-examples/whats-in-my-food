class FoodsFacade
  def self.search_by_ingredient(ingredient)
    results = UsdaService.search(ingredient)[:foods].find_all do |result|
      result[:ingredients].include?(ingredient) if result[:ingredients]
    end
    results.map do |result|
      Food.new(result)
    end
  end
end
