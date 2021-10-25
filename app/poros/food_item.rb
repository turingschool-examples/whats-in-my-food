class FoodItem
  attr_reader :gtin_upc, :description, :brand_owner, :ingredients
  def initialize(food_info)
    @gtin_upc = food_info[:gtinUpc]
    @description = food_info[:description]
    @brand_owner = food_info[:brandOwner]
    @ingredients = food_info[:ingredients]
  end
end
