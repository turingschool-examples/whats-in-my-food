class Food

  attr_reader :gtinUpc,
              :description,
              :brand_owner,
              :ingredients

  def initialize(data)
    @gtinUpc = data[:gtinUpc]
    @description = data[:description]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end

end