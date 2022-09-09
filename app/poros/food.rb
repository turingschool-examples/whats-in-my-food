class Food
  attr_reader :gtin_upc,
              :description,
              :brand_owner,
              :ingredients,
              :total_hits

  def initialize(food_attributes, total_hits)
    @total_hits = total_hits
    @gtin_upc = food_attributes[:gtinUpc]
    @description = food_attributes[:description]
    @brand_owner = food_attributes[:brandOwner]
    @ingredients = food_attributes[:ingredients]
  end
end
