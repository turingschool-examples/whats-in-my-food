class Food
  attr_reader :upc, :description, :brand, :ingredients
  def initialize(food_hash)
    @upc = food_hash[:gtinUpc]
    @description = food_hash[:lowercaseDescription]
    @brand = food_hash[:brandName]
    @ingredients = food_hash[:ingredients]
  end
end
