class Food

  attr_reader :code, :description, :brand_owner, :ingredients

  def initialize(food_data)
    @code = food_data[:gtinUpc]
    @description = food_data[:description]
    @brand_owner = food_data[:brandOwner]
    @ingredients = food_data[:ingredients]
  end
  
end
