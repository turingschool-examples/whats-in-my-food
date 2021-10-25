class FoodDataService < ApiService
  def self.search_ingredient(ingredient)
    get_data("https://api.nal.usda.gov/fdc/v1/foods/search?query=#{ingredient}&api_key=#{ENV['food_data_api']}")
  end
end
