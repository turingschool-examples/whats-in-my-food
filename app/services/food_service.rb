class FoodService < BaseService
  def self.get_food_data
    response = conn("").get("")
    get_json(response)
  end
end
