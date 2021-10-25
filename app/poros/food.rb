class Food
  attr_reader :fdc_id,
              :gtin_upc,
              :description,
              :brand_owner,
              :ingredients

  def initialize(food_data)
    @fdc_id      = food_data[:fdcId]
    @gtin_upc    = food_data[:gtinUpc]
    @description = food_data[:description]
    @brand_owner = food_data[:brandOwner]
    @ingredients = food_data[:ingredients]
  end
end
