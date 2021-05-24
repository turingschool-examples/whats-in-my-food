class FoodFacade
  def self.foods_with_ingredient(ingredient)

    conn = Faraday.new('https://api.nal.usda.gov')
    response = conn.get("/fdc/v1/foods/search?query=#{ingredient}&api_key=#{ENV['FUDSKY']}")
    parsed = JSON.parse(response.body, symbolize_names: true)

    @foods = parsed[:foods].map do |food|
      Food.new(food)
    end.first(10)
  end

  def self.total_results_ingredient(ingredient)
    conn = Faraday.new('https://api.nal.usda.gov')
    response = conn.get("/fdc/v1/foods/search?query=#{ingredient}&api_key=#{ENV['FUDSKY']}")
    parsed = JSON.parse(response.body, symbolize_names: true)
    parsed[:totalHits]
  end
end
