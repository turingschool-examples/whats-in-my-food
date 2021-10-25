class FoodPoro
  attr_reader :upc_code, :description, :brand_owner, :ingredients

  def initialize(data)
    @upc_code = data[:gtinUpc]
    @description = data[:lowercaseDescription]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]&.split(', ')
  end
end
