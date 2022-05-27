class Food
  attr_reader :gtinupc, :description, :brand_owner, :ingredients
  def initialize(attributes)
    @gtinupc = attributes[:gtinUpc]
    @description = attributes[:description]
    @brand_owner = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
  end
end
