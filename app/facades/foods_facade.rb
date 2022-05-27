class FoodsFacade
  def self.search_by_ingredient(query)
    json = FoodService.food_results(query)
    json[:results].map do |result|
      # require "pry"; binding.pry
      Food.new(result)
    end
  end
end
