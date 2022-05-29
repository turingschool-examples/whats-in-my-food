class Food
  attr_reader :gtinupc, :description, :brand_owner, :ingredients

  def initialize(data)
    @gtinupc = data[:gtinUpc]
    @description = data[:description]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end
