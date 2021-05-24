class FoodItem
  attr_reader :gtin_upc,
              :description,
              :brand_owner,
              :ingredients

  def initialize(food)
    @gtin_upc = food[:gtinUpc]
    @description = food[:description]
    @brand_owner = food[:brandOwner]
    @ingredients = food[:ingredients]
  end
end