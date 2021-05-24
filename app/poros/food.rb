class Food
  attr_reader :gtin_ucp_code, :description, :brand, :ingredients
  def initialize(data)
    @gtin_ucp_code = data[:gtinUpc]
    @description = data[:lowercaseDescription]
    @brand = data[:brandOwner]
    @ingredients = data[:ingredients]
  end

end
