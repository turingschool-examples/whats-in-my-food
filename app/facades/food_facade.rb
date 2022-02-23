class FoodFacade

  def self.search_foods(query, page_num)
    FoodService.search_foods(query, page_num)[:foods].map do |food_data|
      food_data[:ingredients].downcase.include?(query.downcase) ? Food.new(food_data) : nil
    end.compact
  end

  def self.count_results(query, page_num)
    FoodService.search_foods(query, page_num)[:totalHits].to_i
  end

end
