class Food

  attr_reader :brandOwner,
              :description,
              :ingredients,
              :gtinupc
              
  def initialize(food_info)
    @brand = food_info[:brandOwner]
    @description = food_info[:description]
    @ingredients = food_info[:ingredients]
    @gtinupc = food_info[:gtinUpc]
  end
end
