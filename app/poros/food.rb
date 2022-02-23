class Food
  attr_reader :gtin_upc, :description, :brand_owner, :ingredients

  def initialize(data)
    @gtin_upc = data[:gtinUpc]
    @description = data[:description]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end
