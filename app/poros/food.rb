class Food
  attr_reader :name, :gtin_upc_code, :brand_owner, :ingredients
  
  def initialize(data)
    
    @name = data[:description]
    @gtin_upc_code = data[:gtinUpc]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end