class FoodFacade
  def self.display_count_foods_returned
    # binding.pry
    json = FoodService.count_foods_returned[:totalHits]

    # json[:totalPages]

    # binding.pry
    # json[:results].map do |food_data|
    #   Food.new(food_data)
    # end
  end
end
