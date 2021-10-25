class Food
  attr_reader :id,
              :gtin_upc,
              :description,
              :brand_owner,
              :ingredients,
              :total_hits

  def initialize(food_info, total_hits)
    @id = food_info[:fdcId]
    @gtin_upc = food_info[:gtinUpc]
    @description = food_info[:description]
    @brand_owner = food_info[:brandOwner]
    @ingredients = food_info[:ingredients]
    @total_hits = total_hits
  end
end
