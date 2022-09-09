class Food 
  attr_reader :description, :code, :brand, :ingredients

  def initialize(data) 
    @description = data[:description]
    @code = data[:gtinUpc]
    @brand = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end