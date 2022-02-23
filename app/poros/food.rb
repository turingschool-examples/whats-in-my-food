class Food 
  attr_reader :gtinUpc, :description, :brand_owner, :ingredients

  def initialize(food)
    @gtinUpc = food[:gtinUpc]
    @description = food[:description]
    @brand_owner = food[:brandOwner]
    @ingredients = food[:ingredients]
  end
end