class Food

  attr_reader :brandOwner,
              :description,
              :ingredients,
              :gtinupc

  def initialize(food_details)
    @brand = food_details[:brandOwner]
    @description = food_details[:description]
    @ingredients = food_details[:ingredients]
    @gtinupc = food_details[:gtinUpc]
  end
end
