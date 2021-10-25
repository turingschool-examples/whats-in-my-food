class FoodService < ApiService
  BASE_URL = 'https://api.nal.usda.gov/fdc'

  def self.search_food(ingredient)
    get_data("#{BASE_URL}/v1/search?#{ingredient}&api_key=#{ENV['food_api']}")
  end
end