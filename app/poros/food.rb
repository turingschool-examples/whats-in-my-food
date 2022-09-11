class Food
  attr_reader :description, :upc_code, :brand_owner, :ingredients

  def initialize(data)
    @description = data[:description]
    @upc_code = data[:gtinUpc]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end

end
