class FoodItem
  attr_reader :name, :id, :upc_code, :brand, :ingredients
  
  def initialize(data)
    @name = data[:description]
    @id = data[:fdcId]
    @upc_code = data[:gtinUpc]
    @brand = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end
