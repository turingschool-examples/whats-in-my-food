class FoodFacade

  def self.search_food_by_keyword(keyword)
    parsed_json = FoodService.search_food_by_keyword(keyword)
    # params[:totalhits] => parsed_json[:totalHits]
    parsed_json[:foods].map do |food_json|
      Food.new(food_json)
    end
  end
end