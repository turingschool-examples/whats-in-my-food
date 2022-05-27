class Food
  attr_reader :gtinUpc, :description, :brandOwner, :ingredients

  def initialize(data)
    @gtinupc = data[:gtinUpc]
    @description = data[:description]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end
