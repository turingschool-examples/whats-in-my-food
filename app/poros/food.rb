class Food
  attr_reader :description, :gtin, :brand_owner, :ingredients

  def initialize(attributes)
  
    @description = attributes[:description]
    @gtin = attributes[:gtinUpc]
    @brand_owner = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
  end
end
