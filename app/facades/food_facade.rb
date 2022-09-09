class FoodFacade
  def self.first_10(keyword_string)
    @food_items = FoodService.search_10(keyword_string).map do |data|
      @food_data = Food.new(data)
    end
  end

  def self.returned(keyword_string)
    @amount = FoodService.total_hits(keyword_string)
  end
end
