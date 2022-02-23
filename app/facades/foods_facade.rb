class FoodsFacade

  def search_foods(query)
    json = FoodService.search(query)
    foods = json[:foods].map do |food_data|
      data = {}
      data[:code] = food_data[:gtinUpc]
      data[:description] = food_data[:description]
      data[:brand] = food_data[:brandOwner]
      data[:ingredients] = food_data[:ingredients]
      Food.new(data)
    end
  end

end
