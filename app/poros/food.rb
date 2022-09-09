class Food
  def initialize(data)
    @name = data[:description]
    @gtin_upc_code = data[:gtinUpc]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end