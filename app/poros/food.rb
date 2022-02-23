class Food
  attr_reader :upc,
              :description,
              :brand_owner,
              :ingredients
  def initialize(food_data)
    @upc = food_data[:gtinUpc]
    @description = food_data[:description]
    @brand_owner = food_data[:brandOwner]
    @ingredients = food_data[:ingredients]
  end
end
