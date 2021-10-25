class Food
  attr_reader :code, :description, :brand_owner, :food_ingredients

  def initialize(data)
    @code = data[:gtinUpc]
    @description = data[:description]
    @brand_owner = data[:brandOwner]
    @food_ingredients = data[:ingredients]
  end
end
