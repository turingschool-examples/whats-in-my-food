class Food
  attr_reader :name, :upc, :brand_owner, :ingredients

  def initialize(food_data)
    @name = food_data[:description]
    @upc = food_data[:gtinUpc]
    @brand_owner = food_data[:brandOwner]
    @ingredients = food_data[:ingredients]
  end
end
