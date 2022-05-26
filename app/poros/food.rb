class Food
  attr_reader :fdcId, :description, :brand_owner, :ingredients

  def initialize(result)
    @fdcId = result[:fdcId]
    @description = result[:description]
    @brand_owner = result[:brandOwner]
    @ingredients = result[:ingredients]
  end
end
