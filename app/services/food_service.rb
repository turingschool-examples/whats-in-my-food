class FoodService < ApiService
  BASE_URL = 'https://api.nal.usda.gov/fdc'

  def self.search_food(food)
    get_data("#{BASE_URL}/v1/search?#{food}&api_key=#{ENV[food_api]}")
  end
end