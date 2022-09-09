class FoodsService

  def self.food_results(food)
    response = connect.get("foods/search?api_key=#{ENV["food_api_key"]}&query=#{food}")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.food_search(food)
    response = connect.get("foods/search?api_key=#{ENV["food_api_key"]}&query=#{food}")
    json = JSON.parse(response.body, symbolize_names: true)[:foods]
  end

  private

  def self.connect
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/") do |faraday|
      faraday.params["api_key"] = ENV['food_api_key']
    end
  end
end
