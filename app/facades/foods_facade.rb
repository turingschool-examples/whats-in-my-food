class FoodsFacade

  def self.search_foods(query, page_size = 10)
    json = FoodService.search(query, page_size)
    foods = json[:foods].map do |food_data|
      data = {}
      data[:code] = food_data[:gtinUpc]
      data[:description] = food_data[:lowercaseDescription]
      data[:brand] = food_data[:brandOwner]
      data[:ingredients] = food_data[:ingredients]
      Food.new(data)
    end
    total_hits = json[:totalHits]
    return [foods, total_hits]
  end

end
