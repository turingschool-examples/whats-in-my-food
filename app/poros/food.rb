class Food
  attr_reader :gtin_upc, :description, :brand_owner, :ingredients

  def initialize(data)
    @gtinupc = data[:gtinUpc]
    @description = data[:description]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end 
