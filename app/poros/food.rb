class Food
  attr_reader :code, :description, :ingredients, :brand
  def initialize(data)
    @code = data[:foodCode]
    @description = data[:description]
    @ingredients = data[:foodNutrients].map {|nutrient| nutrient[:nutrientName]}
    @brand = data[:brand]
  end
end