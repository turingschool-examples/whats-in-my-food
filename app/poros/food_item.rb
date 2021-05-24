class FoodItem
  attr_reader :code,
              :description,
              :brand_owner,
              :ingredients

  def initialize(data)
    @code = data[:gtinUpc]
    @description = data[:description]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end
