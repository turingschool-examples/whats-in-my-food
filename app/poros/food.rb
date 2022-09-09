class Food
  attr_reader :description,
              :gtinUPC,
              :brandOwner,
              :ingredients

  def initialize(food_data)
    @description = food_data[:description]
    @gtinUPC = food_data[:gtinUPC]
    @brandOwner = food_data[:brandOwner]
    @ingredients = food_data[:ingredients]
  end

end