class Food
  attr_reader :code, :description, :brand_owner, :food_ingredients, :name

  def initialize(data)
    @name = data[:brandName]
    @code = data[:gtinUpc]
    @description = data[:description]
    @brand_owner = data[:brandOwner]
    @food_ingredients = data[:ingredients]
  end
end
