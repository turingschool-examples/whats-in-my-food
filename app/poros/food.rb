class Food
attr_reader :gtin, :description, :brand, :ingredients
  def initialize(data)
  	@gtin = data[:gtinUpc]
  	@description = data[:description]
  	@brand = data[:brandOwner]
  	@ingredients = data[:ingredients]
  end
end
