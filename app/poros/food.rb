class Food
  attr_reader :code, :description, :brand, :ingredients
  def initialize(data)
    @code = data[:gtinUpc]
    @description = data[:description]
    @brand = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end