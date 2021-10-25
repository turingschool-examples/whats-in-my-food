class Food
  attr_reader :upc, :description, :brand_owner, :ingredients
  
  def initialize(result)
    @upc = result[:gtinUpc]
    @description = result[:description]
    @brand_owner = result[:brandOwner]
    @ingredients = result[:ingredients]
  end
end