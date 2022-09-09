# frozen_string_literal: true

class FoodFacade
  def self.search_foods(search_term)
    foods = FoodService.search_foods(search_term)
    foods[0..9].map do |data|
      Food.new(data)
    end
  end
  def self.total_results(search_term)
    count = FoodService.total_results(search_term)
  end
end