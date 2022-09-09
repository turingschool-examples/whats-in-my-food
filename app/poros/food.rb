class Food
  attr_reader :gtinupc, :description, :brand, :ingredients

  def initialize(data)
    @gtinupc = data[:gtinUpc]
    @description = data[:description]
    @brand = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end
