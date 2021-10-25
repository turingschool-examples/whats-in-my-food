class Food
  attr_reader :upc, :description, :brand_owner, :ingredients

  def initialize(result)
    @upc = result[:foods][:gtinUpc]
    @description = result[:foods][:description]
    @brand_owner = result[:foods][:brandOwner]
    @ingredients = result[:foods][:ingredients]
  end
end