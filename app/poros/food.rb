class Food
  attr_reader :upc, :description, :brand_owner, :ingredients

  def initialize(data)
    # @id =data[:fdcId]
    @upc = data[:gtinUpc]
    @description = data[:description]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end
