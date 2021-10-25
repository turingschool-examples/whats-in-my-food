class Food
  attr_reader :upc_code, :description, :brand, :ingredients

  def initialize(food_info)
    @upc_code = food_info[:gtinUpc]
    @description = food_info[:description]
    @brand = food_info[:brandOwner]
    @ingredients = food_info[:ingredients]
  end
end
