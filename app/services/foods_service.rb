class FoodsService

  def self.search_ingredients(ingredient)
    paramiters = {query: ingredient}
    response = connection.get('fdc/v1/foods/search') do |faraday|
      paramiters.each do |k, v|
        faraday.params[k] = v
      end
    end

    parse_json(response)
  end


  def self.food_list(ingredient, list_length = 10) # move to facade in future
    food_data = search_ingredients(ingredient)
    top_ten = food_data[:foods].first(list_length)
    # binding.pry
    future_poro = top_ten.map do |food|#in future make this poro
      {brand: food[:brandOwner],
      description: food[:lowercaseDescription],
      gtinUpc: food[:gtinUpc],
      ingredients: food[:ingredients]}
    end
    future_poro

  end

  def self.connection
    Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
      faraday.params['api_key'] = ENV['food_api']
    end
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

end
