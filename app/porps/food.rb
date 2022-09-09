class Food

  attr_reader :id, :gtinupc_code, :description, :brand_owner, :ingredients

  def initialize(data)
    @id = data[:fdcId]
    @gtinupc_code = data[:gtinUpc]
    @description = data[:description]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end

end
