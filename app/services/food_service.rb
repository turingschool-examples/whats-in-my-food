require 'faraday'
class FoodService
  def self.connection
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/foods/") do |f|
      f.params['api_key'] = 'Ze3akdRIKt8TZiohIkLEfF5va0Q5WHAshPSFaHkl'
    end
  end 

  def self.all_food
    response = connection.get("list")
    JSON.parse(response.body, symbolize_names: true)
  end 
end 