class FoodsFacade
  def self.get_foods(query)
    response_body = USDAService.search(query)
    if response_body[:foods]
      formatted = response_body[:foods].map { |food_hash| Food.new(food_hash) }
      return {
        total_results: response_body[:totalHits],
        query: response_body[:foodSearchCriteria][:query],
        results: formatted.first(10)
      }
    else
      return nil
    end
  end
end
