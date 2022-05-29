class FoodsService < BaseService
  def self.get_food_data(query)
    response = conn("https://api.nal.usda.gov").get("/fdc/v1/foods/search?query=#{query}") do |faraday|
      faraday.params["api_key"] = ENV["food_api_key"]
    end
    get_json(response)
  end
end
