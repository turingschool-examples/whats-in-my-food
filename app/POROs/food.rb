class Food
  attr_reader :id, :description, :gtin_upc, :ingredients, :brand_owner

  def initialize(data)
    @id = data[:fdcId]
    @description = data[:lowercaseDescription]
    @gtin_upc = data[:gtinUpc]
    @ingredients = data[:ingredients]
    @brand_owner = data[:brandOwner]
  end
end
