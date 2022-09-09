class FoodFacade

  def self.create_food_search(keyword)
    response = FoodService.get_food_search(keyword)

    response[:foods][0..9].map do |food_data|
      Food.new(response[:totalHits], food_data)
    end
  end
end