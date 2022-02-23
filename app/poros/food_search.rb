class FoodSearch
  attr_reader: :upc, :description, :brand, :ingredients

  def initialize(data)
    @upc = data[:gtinUpc]
    @description = data[:description]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end 
