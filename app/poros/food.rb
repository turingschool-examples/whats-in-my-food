class Food
  attr_reader :description,
              :gtinUpc,
              :brandOwner,
              :ingredients

  def initialize(food_data)
    @description = food_data[:description]
    @gtinUpc = food_data[:gtinUpc]
    @brandOwner = food_data[:brandOwner]
    @ingredients = food_data[:ingredients]
  end

end