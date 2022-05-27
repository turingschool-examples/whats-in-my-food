class FoodsFacade
  def self.search_by_ingredient(ingredient)
    results = []
    page_counter = 1
    until page_counter > 50
      results << UsdaService.search(ingredient, page_counter)[:foods].find_all do |result|
        result[:ingredients].include?(ingredient) if result[:ingredients]
      end
      page_counter += 1
    end
    actual_results = results.find_all do |result|
      !result.empty?
    end
    actual_results.map do |actual_result|
      binding.pry
      Food.new(actual_result)
    end
  end
end
