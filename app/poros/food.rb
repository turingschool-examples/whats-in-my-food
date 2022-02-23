class Food 
  attr_reader :fdcId, :description, :brand_owner, :ingredients

  def initialize(food)
    @fdcId = food[:fdcId]
    @description = food[:description]
    @brand_owner = food[:brandOwner]
    @ingredients = food[:ingredients]
  end
end