class FoodInfo
  attr_reader :upc_code,
              :description,
              :brand_owner,
              :ingredients

  def initialize(food_data)
    @upc_code = food_data[:upc_code]
    @description = food_data[:description]
    @brand_owner = food_data[:brand_owner]
    @ingredients = food_data[:ingredients]
  end
end
