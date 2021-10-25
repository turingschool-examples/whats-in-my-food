class Food
  attr_reader :brand, :code, :description, :ingredients
  def initialize(food_data)
    @brand = food_data[:brandOwner]
    @code = food_data[:gtinUpc]
    @description = food_data[:description]
    @ingredients = food_data[:ingredients]
  end
end
