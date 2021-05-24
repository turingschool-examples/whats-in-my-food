class Food
  attr_reader :brand_owner,
              :gtin_upc,
              :ingredients,
              :description

  def initialize(food)
    @brand_owner = food[:brandOwner]
    @gtin_upc = food[:gtinUpc]
    @ingredients = food[:ingredients].downcase
    @description = food[:lowercaseDescription]
  end
end