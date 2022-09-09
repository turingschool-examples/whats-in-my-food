class FoodDBFacade
  def self.searched_food_results(searched_query)
    parsed_json = FoodDBService.get_searched_foods(searched_query)
    all_results = parsed_json[:foods].map do |food_data|
      Food.new(food_data)
    end
    return all_results[0..9]
  end

  def self.the_total_hits_for_search(searched_query)
    parsed_json = FoodDBService.get_top_hits(searched_query)
    FoodTotalHits.new(parsed_json)
  end
end