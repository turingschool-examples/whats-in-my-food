class Food
  attr_reader :gtin_upc_code,
              :description,
              :brand_owner,
              :ingredients

  def initialize(food_data)
    @gtin_upc_code = food_data[:gtinUpc]
    @description = food_data[:description]
    @brand_owner = food_data[:brandOwner]
    @ingredients = food_data[:ingredients]
  end
end
