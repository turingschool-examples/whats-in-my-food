class Food
  attr_reader :id, :description, :brand, :ingredients
  def initialize(data)
    @id = data[:fdcId]
    @description = data[:description]
    @brand = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end
